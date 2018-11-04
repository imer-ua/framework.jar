.class public Lmiui/util/NotificationInjector;
.super Ljava/lang/Object;
.source "NotificationInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChannelId(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .locals 1
    .param p0, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 10
    const-string/jumbo v0, ""

    return-object v0
.end method
