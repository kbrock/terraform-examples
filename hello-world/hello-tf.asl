{
  "Comment": "Provisioning using TerraForms",
  "StartAt": "Start",
  "States": {
    "Start": {
      "Type": "Task",
      "Resource": "manageiq://embedded_terraform",
      "Parameters": {
        "Stage": "start"
      },
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
      "Next": "CheckCompleted"
    },
    "CheckCompleted": {
      "Type": "Task",
      "Resource": "manageiq://embedded_terraform",
      "Parameters": {
        "Stage": "check_completed"
      },
      "Next": "Refresh"
    },
    "Refresh": {
      "Type": "Task",
      "Resource": "manageiq://embedded_terraform",
      "Parameters": {
        "Stage": "refresh"
      },
      "Next": "CheckRefreshed"
    },
    "CheckRefreshed": {
      "Type": "Task",
      "Resource": "manageiq://embedded_terraform",
      "Parameters": {
        "Stage": "CheckRefreshed"
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
