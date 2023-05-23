IMG_URL="gcr.io/cloud-tagging-10302018/gtm-cloud-image:stable"
WISH_TO_CONTINUE="Do you wish to continue? (y/N): "
WELCOME_TEXT="Please input the following information to set up your tagging server. For more
information about the configuration, input '?'. To use the recommended setting
or your current setting, leave blank."
SERVICE_PREFIX_HELP="  Provide a name for the Cloud Run service you wish to use for this deployment.
  The name will be suffixed with -prod and -debug for production and debug services,
  respectively."
CONTAINER_CONFIG_HELP="  The Container Config string links your Cloud Run service to your GTM Server container.
  You can find the Container Config string in the GTM UI by going to Container Settings."
POLICY_SCRIPT_HELP="  The policy script URL is an optional URL that specifies the policies that
  govern custom template permissions. A value of '' means that there is no
  policy script URL. Enter 'None' to clear the URL.
  For more information, see: https://developers.google.com/tag-manager/templates/policies"
MIN_INSTANCES_HELP="  The minimum number of instances running the container at any given time.
  Set to 0 to have Cloud Run scale in automatically based on demand."
MAX_INSTANCES_HELP="  The maximum number of instances Cloud Run will scale up to, if necessary.
  Note that with traffic spikes it's possible for the maximum number of instances
  to be exceeded temporarily."
MEMORY_LIMIT_HELP="  Enter the memory limit for each instance. If you specify higher than 4Gi, you will
  need to allocate a minimum of 2 CPUs, and if you want to allocate 4 CPUs, you will
  need to set a memory limit of at least 2Gi (CPU limits will be prompted from you next)."
CPU_LIMIT_HELP="  Enter the number of CPUs to use for each instance. Options are 1, 2, and 4. If you set
