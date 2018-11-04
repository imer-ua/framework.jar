.class public Lcom/miui/enterprise/EnterpriseManager;
.super Ljava/lang/Object;
.source "EnterpriseManager.java"


# static fields
.field public static final APN_MANAGER:Ljava/lang/String; = "apn_manager"

.field public static final APPLICATION_MANAGER:Ljava/lang/String; = "application_manager"

.field public static final DEVICE_MANAGER:Ljava/lang/String; = "device_manager"

.field public static final PHONE_MANAGER:Ljava/lang/String; = "phone_manager"

.field public static final RESTRICTIONS_MANAGER:Ljava/lang/String; = "restrictions_manager"

.field public static final SERVICE_NAME:Ljava/lang/String; = "EnterpriseManager"

.field private static sEnterpriseManager:Lcom/miui/enterprise/IEnterpriseManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEnterpriseService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 5
    .param p0, "serviceName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 33
    sget-object v1, Lcom/miui/enterprise/EnterpriseManager;->sEnterpriseManager:Lcom/miui/enterprise/IEnterpriseManager;

    if-nez v1, :cond_0

    .line 34
    const-string/jumbo v1, "EnterpriseManager"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/enterprise/IEnterpriseManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/enterprise/IEnterpriseManager;

    move-result-object v1

    sput-object v1, Lcom/miui/enterprise/EnterpriseManager;->sEnterpriseManager:Lcom/miui/enterprise/IEnterpriseManager;

    .line 37
    :cond_0
    :try_start_0
    sget-object v1, Lcom/miui/enterprise/EnterpriseManager;->sEnterpriseManager:Lcom/miui/enterprise/IEnterpriseManager;

    invoke-interface {v1, p0}, Lcom/miui/enterprise/IEnterpriseManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "EnterpriseManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to get enterprise service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    return-object v4
.end method
