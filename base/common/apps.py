from django.apps import AppConfig
from django.utils.translation import gettext_lazy as _

# from watson import search as watson


class CommonConfig(AppConfig):
    name = "base.common"
    verbose_name = _("Common")

    def ready(self):
        try:
            import base.common.signals  # noqa F401
        except ImportError:
            pass
        # base_common = self.get_model("base.common")
        # watson.register(base_common)
