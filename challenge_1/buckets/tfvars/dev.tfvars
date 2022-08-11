project_id          =        "steam-snowfall-345010"
names               =        ["cerebuc1","cerebuc2"]
prefix              =        "cer"
location            =        "US"
storage_class       =        null
labels              =        {
                                "foo": "bar"
                                "project_id": "steam-snowfall-345010"
                            }
bucket_policy_only  =        null
versioning          =        true
force_destroy       =        false
iam_members         =        [{
                                role   = "roles/storage.objectViewer"
                                member = "user:rituraj0tiwari@gmail.com"
                            }]
retention_policy    =        null
encryption          =        null
lifecycle_rules     =        [{
                                action = {
                                type          = "SetStorageClass"
                                storage_class = "NEARLINE"
                                }
                                condition = {
                                age                   = "10"
                                matches_storage_class = "MULTI_REGIONAL,STANDARD,DURABLE_REDUCED_AVAILABILITY"
                                }
                            }]
log_bucket          =        null
log_object_prefix   =        null

#############################################
############Buckets IAM Bindings#############
#############################################

vpc-sa          = "cer-network@steam-snowfall-345010.iam.gserviceaccount.com"
tf-sa           = "cer-tf-admin@steam-snowfall-345010.iam.gserviceaccount.com"