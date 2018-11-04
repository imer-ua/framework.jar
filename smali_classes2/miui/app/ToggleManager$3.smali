.class Lmiui/app/ToggleManager$3;
.super Landroid/content/BroadcastReceiver;
.source "ToggleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/ToggleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/ToggleManager;


# direct methods
.method constructor <init>(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 1126
    iput-object p1, p0, Lmiui/app/ToggleManager$3;->this$0:Lmiui/app/ToggleManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1128
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1129
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1130
    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1129
    if-nez v1, :cond_0

    .line 1131
    const-string/jumbo v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1129
    if-eqz v1, :cond_2

    .line 1132
    :cond_0
    iget-object v1, p0, Lmiui/app/ToggleManager$3;->this$0:Lmiui/app/ToggleManager;

    invoke-virtual {v1, p2}, Lmiui/app/ToggleManager;->updateWifiToggle(Landroid/content/Intent;)V

    .line 1127
    :cond_1
    :goto_0
    return-void

    .line 1133
    :cond_2
    const-string/jumbo v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1134
    iget-object v1, p0, Lmiui/app/ToggleManager$3;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v1}, Lmiui/app/ToggleManager;->-get0(Lmiui/app/ToggleManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1135
    iget-object v1, p0, Lmiui/app/ToggleManager$3;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v1}, Lmiui/app/ToggleManager;->-wrap7(Lmiui/app/ToggleManager;)V

    goto :goto_0

    .line 1137
    :cond_3
    const-string/jumbo v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1138
    iget-object v1, p0, Lmiui/app/ToggleManager$3;->this$0:Lmiui/app/ToggleManager;

    invoke-virtual {v1}, Lmiui/app/ToggleManager;->updateRingerToggle()V

    .line 1139
    iget-object v1, p0, Lmiui/app/ToggleManager$3;->this$0:Lmiui/app/ToggleManager;

    invoke-virtual {v1}, Lmiui/app/ToggleManager;->updateVibrateToggle()V

    goto :goto_0

    .line 1140
    :cond_4
    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1141
    iget-object v1, p0, Lmiui/app/ToggleManager$3;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v1}, Lmiui/app/ToggleManager;->-wrap10(Lmiui/app/ToggleManager;)V

    goto :goto_0

    .line 1142
    :cond_5
    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1143
    iget-object v2, p0, Lmiui/app/ToggleManager$3;->this$0:Lmiui/app/ToggleManager;

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    :goto_1
    invoke-static {v2, v1}, Lmiui/app/ToggleManager;->-set0(Lmiui/app/ToggleManager;Z)Z

    .line 1144
    iget-object v1, p0, Lmiui/app/ToggleManager$3;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v1}, Lmiui/app/ToggleManager;->-wrap9(Lmiui/app/ToggleManager;)V

    goto :goto_0

    .line 1143
    :cond_6
    const/4 v1, 0x1

    goto :goto_1
.end method
