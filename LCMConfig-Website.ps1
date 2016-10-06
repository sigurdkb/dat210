[DSCLocalConfigurationManager()]
configuration LCMConfig-Website
{
    Node localhost
    {
        Settings
        {
            RefreshMode = 'Push'
            ConfigurationMode = 'ApplyAndAutoCorrect'
        }
    }
}
