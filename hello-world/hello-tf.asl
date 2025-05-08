{
  "Comment": "Provisioning using TerraForms",
  "StartAt": "Start",
  "States": {
    "Start": {
      "Type": "Pass",
      "Next": "PreProcess"
    },
    "PreProcess": {
      "Type": "Task",
      "Resource": "manageiq://embedded_terraform",
      "Parameters": {
        "Stage": "preprocess"
      },
      "Next": "execute"
    },
    "execute": {
      "Type": "Task",
      "Resource": "manageiq://embedded_terraform",
      "Parameters": {
        "Stage": "execute"
      },
      "Next": "Refresh"
    },
    "Refresh": {
      "Type": "Task",
      "Resource": "manageiq://embedded_terraform",
      "Parameters": {
        "Stage": "refresh"
      },
      "Next": "PostProcess"
    },
    "PostProcess": {
      "Type": "Task",
      "Resource": "manageiq://embedded_terraform",
      "Parameters": {
        "Stage": "postprocess"
      },
      "Next": "Email"
    },
    "Email": {
      "Type": "Pass",
      "Next": "Completed"
    },
      "Completed": {
      "Type": "Succeed"
    }
  }
}
