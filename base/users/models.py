import uuid

from django.contrib.auth.models import AbstractBaseUser, PermissionsMixin

# from django.contrib.postgres.fields import CIEmailField
# from django.core.mail import send_mail
from django.db import models

# from django.db.models.fields import CharField
from django.urls import reverse

# from django.utils import timezone
from django.utils.translation import gettext_lazy as _

from .managers import UserManager


class User(AbstractBaseUser, PermissionsMixin):

    pkid = models.AutoField(
        verbose_name=_("Primary Key ID"), primary_key=True, editable=False
    )
    id = models.UUIDField(
        verbose_name=_("ID"), default=uuid.uuid4, editable=False, unique=True
    )
    username = models.CharField(verbose_name=_("Username"), max_length=150, unique=True)
    # name = models.CharField(_("Name of User"), blank=True, max_length=255)
    first_name = models.CharField(
        verbose_name=_("First Name"), max_length=50, default="firstName"
    )
    last_name = models.CharField(
        verbose_name=_("Last Name"), max_length=50, default="lastName"
    )
    email = models.EmailField(verbose_name=_("Email Address"), unique=True)
    phone_number = models.CharField(
        verbose_name=_("Phone Number"), max_length=200, null=True, blank=True
    )
    date_joined = models.DateTimeField(verbose_name=_("Date Joined"), auto_now_add=True)
    updated = models.DateTimeField(verbose_name=_("Last Updated"), auto_now=True)
    is_admin = models.BooleanField(verbose_name=_("Admin"), default=False)
    is_staff = models.BooleanField(verbose_name=_("Staff"), default=False)
    is_active = models.BooleanField(verbose_name=_("Active"), default=True)
    is_organizer = models.BooleanField(verbose_name=_("Organizer"), default=False)
    # profile_image = models.ImageField(max_length=255, upLoad_to=get_profile_image_filepath,
    # null=True, blank=True, default=get_default_profile_image)
    # hide_email = models.BooleanField(default=True)
    # *** ADD ONS ***
    # *** AGENT_APP ***
    is_agent = models.BooleanField(verbose_name=_("Agent"), default=False)
    # *** COMPANY_APP ***
    # company_name = models.ForeignKey(Company, max_length=150, unique=True, blank=True)
    # company_name = models.ManyToManyField(Company, max_length=150, unique=True, blank=True)
    # *** STORE_APP ***
    # customer = str(username)
    is_customer = models.BooleanField(verbose_name=_("Customer"), default=True)

    # VERIFICATION
    is_email_verified = models.BooleanField(
        verbose_name=_("Email Verified"), default=False
    )

    objects = UserManager()

    USERNAME_FIELD = "username"
    REQUIRED_FIELDS = ["email"]

    class Meta:
        verbose_name = _("User")
        verbose_name_plural = _("Users")

    def __str__(self):
        return self.username

    @property
    def get_full_name(self):
        return f"{self.first_name} {self.last_name}"

    def get_short_name(self):
        return self.username

    # def email_user(self, subject, message, from_email=None, **kwargs):
    #     """Send an email to this user."""
    #     send_mail(subject, message, from_email, [self.email], **kwargs)

    # def get_profile_image_filename(self):
    #     return str(self.profile_image)[str(self.profile_image).index(f'profile_images/{self.pk}'):]

    # def has_perm(self, perm, obj=None):
    #     return self.is_admin

    # def has_module_perms(self, app_label):
    #     return True

    def get_absolute_url(self):
        """Get url for user's detail view.

        Returns:
            str: URL for user detail.

        """
        return reverse("users:detail", kwargs={"username": self.username})
