from django.contrib.auth.base_user import BaseUserManager
from django.core.exceptions import ValidationError
from django.core.validators import validate_email
from django.utils.translation import gettext_lazy as _


class UserManager(BaseUserManager):

    # use_in_migrations = True

    def email_validator(self, email):
        try:
            validate_email(email)
        except ValidationError:
            raise ValueError(_("You must provide a valid email address"))

    def create_superuser(self, email, username, password, **other_fields):

        # other_fields.setdefault('is_admin', True)
        other_fields.setdefault("is_staff", True)
        other_fields.setdefault("is_superuser", True)
        other_fields.setdefault("is_active", True)

        if other_fields.get("is_staff") is not True:
            raise ValueError(_("Superusers must have is_staff=True"))

        if other_fields.get("is_superuser") is not True:
            raise ValueError(_("Superusers must have is_superuser=True"))

        if not password:
            raise ValueError(_("Superusers must have a password"))

        if email:
            email = self.normalize_email(email)
            self.email_validator(email)
        else:
            raise ValueError(_("Admin Account: An email address is required"))

        return self.create_user(email, username, password, **other_fields)

    def create_user(self, email, username, password, **other_fields):

        if not username:
            raise ValueError(_("Users must submit a username"))

        if email:
            email = self.normalize_email(email)
            self.email_validator(email)
        else:
            raise ValueError(_("Base User Account: An email address is required"))

        email = self.normalize_email(email)
        user = self.model(email=email, username=username, **other_fields)
        user.set_password(password)
        other_fields.setdefault("is_staff", False)
        other_fields.setdefault("is_superuser", False)
        # other_fields.setdefault("is_email_verified", False)
        user.save()
        # user.save(using=self._db)
        return user
