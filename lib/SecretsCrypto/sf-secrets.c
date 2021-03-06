#include "sf-secrets.h"

const gchar *SF_SECRETS_DEFAULT_AUTHENTICATION_PLUGIN = "plugin.authentication.default";
const gchar *SF_SECRETS_DEFAULT_STORAGE_PLUGIN = "plugin.storage.default";
const gchar *SF_SECRETS_DEFAULT_ENCRYPTION_PLUGIN = "plugin.encryption.default";
const gchar *SF_SECRETS_DEAFULT_ENCRYPTED_STORAGE_PLUGIN = "plugin.encryptedstorage.default";

G_DEFINE_QUARK(SfSecretsError, sf_secrets_error)

void sf_secrets_plugin_info_free(SfSecretsPluginInfo *info)
{
    if (G_UNLIKELY(!info))
        return;

    g_free(info->display_name);
    g_free(info->name);

    g_free(info);
}

SfSecretsPluginInfo *sf_secrets_plugin_info_copy(const SfSecretsPluginInfo *other)
{
    SfSecretsPluginInfo *rv = g_new0(SfSecretsPluginInfo, 1);

    rv->display_name = g_strdup(other->display_name);
    rv->name = g_strdup(other->name);
    rv->version = other->version;
    rv->state = other->state;

    return rv;
}

