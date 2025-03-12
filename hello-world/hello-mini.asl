{
    "Comment": "minimal Provision using TerraForms",
    "StartAt": "PreProvision",
    "States": {
      "PreProvision": {
        "Type": "Pass",
        "Next": "Provision"
      },
      "Provision": {
        "Type": "Task",
        "Resource": "manageiq://provision_execute",
        "Next": "Finished"
      },
      "Finished": {
        "Type": "Succeed"
      }
    }
  }
