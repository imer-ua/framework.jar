.class public Lcom/miui/enterprise/sdk/PhoneManager;
.super Ljava/lang/Object;
.source "PhoneManager.java"


# static fields
.field public static final CLOSE:I = 0x3

.field public static final DISABLE:I = 0x0

.field public static final ENABLE:I = 0x1

.field public static final FLAG_DEFAULT:I = 0x0

.field public static final FLAG_DISALLOW_IN:I = 0x1

.field public static final FLAG_DISALLOW_OUT:I = 0x2

.field public static final FORCE_OPEN:I = 0x4

.field public static final OPEN:I = 0x2

.field public static final RESTRICTION_MODE_BLACK_LIST:I = 0x2

.field public static final RESTRICTION_MODE_DEFAULT:I = 0x0

.field public static final RESTRICTION_MODE_WHITE_LIST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PhoneManager"

.field private static mService:Lcom/miui/enterprise/IPhoneManager;

.field private static volatile sInstance:Lcom/miui/enterprise/sdk/PhoneManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string/jumbo v0, "phone_manager"

    invoke-static {v0}, Lcom/miui/enterprise/EnterpriseManager;->getEnterpriseService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/enterprise/IPhoneManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/enterprise/IPhoneManager;

    move-result-object v0

    sput-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    .line 34
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/miui/enterprise/sdk/PhoneManager;
    .locals 2

    .prologue
    const-class v1, Lcom/miui/enterprise/sdk/PhoneManager;

    monitor-enter v1

    .line 39
    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->sInstance:Lcom/miui/enterprise/sdk/PhoneManager;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/miui/enterprise/sdk/PhoneManager;

    invoke-direct {v0}, Lcom/miui/enterprise/sdk/PhoneManager;-><init>()V

    sput-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->sInstance:Lcom/miui/enterprise/sdk/PhoneManager;

    .line 42
    :cond_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->sInstance:Lcom/miui/enterprise/sdk/PhoneManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public controlCellular(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    .line 63
    :try_start_0
    sget-object v1, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/miui/enterprise/IPhoneManager;->controlCellular(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PhoneManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public controlPhoneCall(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    .line 55
    :try_start_0
    sget-object v1, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/miui/enterprise/IPhoneManager;->controlPhoneCall(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PhoneManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public controlSMS(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    .line 47
    :try_start_0
    sget-object v1, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/miui/enterprise/IPhoneManager;->controlSMS(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PhoneManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public disableCallForward(Z)V
    .locals 3
    .param p1, "disable"    # Z

    .prologue
    .line 242
    :try_start_0
    sget-object v1, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-interface {v1, p1}, Lcom/miui/enterprise/IPhoneManager;->disableCallForward(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PhoneManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public disableCallLog(Z)V
    .locals 3
    .param p1, "disable"    # Z

    .prologue
    .line 250
    :try_start_0
    sget-object v1, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-interface {v1, p1}, Lcom/miui/enterprise/IPhoneManager;->disableCallLog(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    return-void

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PhoneManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public endCall()V
    .locals 3

    .prologue
    .line 234
    :try_start_0
    sget-object v1, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-interface {v1}, Lcom/miui/enterprise/IPhoneManager;->endCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PhoneManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAreaCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 258
    :try_start_0
    sget-object v1, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-interface {v1, p1}, Lcom/miui/enterprise/IPhoneManager;->getAreaCode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PhoneManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    const-string/jumbo v1, ""

    return-object v1
.end method

.method public getCallBlackList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    :try_start_0
    sget-object v1, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/miui/enterprise/IPhoneManager;->getCallBlackList(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PhoneManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    const/4 v1, 0x0

    return-object v1
.end method

.method public getCallContactRestriction()I
    .locals 3

    .prologue
    .line 225
    :try_start_0
    sget-object v1, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/miui/enterprise/IPhoneManager;->getCallContactRestriction(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PhoneManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    const/4 v1, 0x0

    return v1
.end method

.method public getCallWhiteList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    :try_start_0
    sget-object v1, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/miui/enterprise/IPhoneManager;->getCallWhiteList(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PhoneManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    const/4 v1, 0x0

    return-object v1
.end method

.method public getCellularStatus()I
    .locals 3

    .prologue
    .line 89
    :try_start_0
    sget-object v1, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/miui/enterprise/IPhoneManager;->getCellularStatus(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PhoneManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    const/4 v1, 0x0

    return v1
.end method

.method public getIMEI(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 98
    :try_start_0
    sget-object v1, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-interface {v1, p1}, Lcom/miui/enterprise/IPhoneManager;->getIMEI(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PhoneManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    const-string/jumbo v1, ""

    return-object v1
.end method

.method public getMeid(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 267
    :try_start_0
    sget-object v1, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-interface {v1, p1}, Lcom/miui/enterprise/IPhoneManager;->getMeid(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PhoneManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    const-string/jumbo v1, ""

    return-object v1
.end method

.method public getPhoneCallStatus()I
    .locals 3

    .prologue
    .line 80
    :try_start_0
    sget-object v1, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/miui/enterprise/IPhoneManager;->getPhoneCallStatus(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PhoneManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    const/4 v1, 0x0

    return v1
.end method

.method public getSMSBlackList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    :try_start_0
    sget-object v1, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/miui/enterprise/IPhoneManager;->getSMSBlackList(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PhoneManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSMSContactRestriction()I
    .locals 3

    .prologue
    .line 174
    :try_start_0
    sget-object v1, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/miui/enterprise/IPhoneManager;->getSMSContactRestriction(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PhoneManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    const/4 v1, 0x0

    return v1
.end method

.method public getSMSStatus()I
    .locals 3

    .prologue
    .line 71
    :try_start_0
    sget-object v1, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/miui/enterprise/IPhoneManager;->getSMSStatus(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PhoneManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    const/4 v1, 0x0

    return v1
.end method

.method public getSMSWhiteList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    :try_start_0
    sget-object v1, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/miui/enterprise/IPhoneManager;->getSMSWhiteList(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PhoneManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    const/4 v1, 0x0

    return-object v1
.end method

.method public isAutoRecordPhoneCall()Z
    .locals 3

    .prologue
    .line 123
    :try_start_0
    sget-object v1, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/miui/enterprise/IPhoneManager;->isAutoRecordPhoneCall(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PhoneManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    const/4 v1, 0x0

    return v1
.end method

.method public setCallBlackList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    sget-object v1, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/miui/enterprise/IPhoneManager;->setCallBlackList(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PhoneManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setCallContactRestriction(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 217
    :try_start_0
    sget-object v1, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/miui/enterprise/IPhoneManager;->setCallContactRestriction(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PhoneManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setCallWhiteList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    sget-object v1, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/miui/enterprise/IPhoneManager;->setCallWhiteList(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PhoneManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setIccCardActivate(IZ)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "isActive"    # Z

    .prologue
    .line 276
    :try_start_0
    sget-object v1, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-interface {v1, p1, p2}, Lcom/miui/enterprise/IPhoneManager;->setIccCardActivate(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PhoneManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPhoneCallAutoRecord(Z)V
    .locals 3
    .param p1, "isAutoRecord"    # Z

    .prologue
    .line 107
    :try_start_0
    sget-object v1, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/miui/enterprise/IPhoneManager;->setPhoneCallAutoRecord(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PhoneManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPhoneCallAutoRecordDir(Ljava/lang/String;)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 115
    :try_start_0
    sget-object v1, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-interface {v1, p1}, Lcom/miui/enterprise/IPhoneManager;->setPhoneCallAutoRecordDir(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PhoneManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setSMSBlackList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    sget-object v1, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/miui/enterprise/IPhoneManager;->setSMSBlackList(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PhoneManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setSMSContactRestriction(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 166
    :try_start_0
    sget-object v1, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/miui/enterprise/IPhoneManager;->setSMSContactRestriction(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PhoneManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setSMSWhiteList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    sget-object v1, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/miui/enterprise/IPhoneManager;->setSMSWhiteList(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PhoneManager"

    const-string/jumbo v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
