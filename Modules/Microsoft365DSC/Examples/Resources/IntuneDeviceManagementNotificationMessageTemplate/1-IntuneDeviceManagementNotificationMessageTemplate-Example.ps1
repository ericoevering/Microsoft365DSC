<#
This example is used to test new resources and showcase the usage of new resources being worked on.
It is not meant to use as a production baseline.
#>

Configuration Example
{
    param(
        [Parameter(Mandatory = $true)]
        [PSCredential]
        $Credscredential
    )
    Import-DscResource -ModuleName Microsoft365DSC

    node localhost
    {
        IntuneDeviceManagementNotificationMessageTemplate 'Example'
        {
            BrandingOptions      = "includeCompanyLogo,includeCompanyName,includeContactInformation";
            Credential           = $Credscredential;
            DefaultLocale        = "nl-nl";
            DisplayName          = "Admin";
            Ensure               = "Present";
            Id                   = "ae5d6d4b-6368-47e3-82d1-ca117acd20c1";
            RoleScopeTagIds      = @("0");
        }
    }
}
