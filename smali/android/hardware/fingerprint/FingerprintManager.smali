.class public Landroid/hardware/fingerprint/FingerprintManager;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/FingerprintManager$1;,
        Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$AuthenticationFidoCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;,
        Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;,
        Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$MyHandler;,
        Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;,
        Landroid/hardware/fingerprint/FingerprintManager$OnEnrollCancelListener;,
        Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final FINGERPRINT_ACQUIRED_GOOD:I = 0x0

.field public static final FINGERPRINT_ACQUIRED_IMAGER_DIRTY:I = 0x3

.field public static final FINGERPRINT_ACQUIRED_INSUFFICIENT:I = 0x2

.field public static final FINGERPRINT_ACQUIRED_PARTIAL:I = 0x1

.field public static final FINGERPRINT_ACQUIRED_TOO_FAST:I = 0x5

.field public static final FINGERPRINT_ACQUIRED_TOO_SLOW:I = 0x4

.field public static final FINGERPRINT_ACQUIRED_VENDOR_BASE:I = 0x3e8

.field private static final FINGERPRINT_CMD_CHECKERBOARD_TEST:I = 0x9

.field private static final FINGERPRINT_CMD_FP_DISABLE:I = 0x4

.field private static final FINGERPRINT_CMD_FP_ENABLE:I = 0x3

.field private static final FINGERPRINT_CMD_SELF_TEST:I = 0x8

.field private static final FINGERPRINT_CMD_SET_ACTIVE_MODE:I = 0x1

.field private static final FINGERPRINT_CMD_SET_DEFAULT_MODE:I = 0x2

.field private static final FINGERPRINT_CMD_SET_SECURITY_LEVEL:I = 0x7

.field private static final FINGERPRINT_CMD_START_SET_MODE:I = 0x5

.field private static final FINGERPRINT_CMD_STOP_SET_MODE:I = 0x6

.field public static final FINGERPRINT_ERROR_CANCELED:I = 0x5

.field public static final FINGERPRINT_ERROR_HW_UNAVAILABLE:I = 0x1

.field public static final FINGERPRINT_ERROR_LOCKOUT:I = 0x7

.field public static final FINGERPRINT_ERROR_NO_SPACE:I = 0x4

.field public static final FINGERPRINT_ERROR_TIMEOUT:I = 0x3

.field public static final FINGERPRINT_ERROR_UNABLE_TO_PROCESS:I = 0x2

.field public static final FINGERPRINT_ERROR_UNABLE_TO_REMOVE:I = 0x6

.field public static final FINGERPRINT_ERROR_VENDOR_BASE:I = 0x3e8

.field private static final FINGERPRINT_MODE_KEY:I = 0x3

.field private static final FINGERPRINT_MODE_NAV:I = 0x2

.field private static final FINGERPRINT_MODE_SLEEP:I = 0x1

.field private static final MSG_ACQUIRED:I = 0x65

.field private static final MSG_AUTHENTICATION_FAILED:I = 0x67

.field private static final MSG_AUTHENTICATION_FIDO_SUCCESSED:I = 0x6a

.field private static final MSG_AUTHENTICATION_SUCCEEDED:I = 0x66

.field private static final MSG_ENROLL_RESULT:I = 0x64

.field private static final MSG_ERROR:I = 0x68

.field private static final MSG_REMOVED:I = 0x69

.field private static final TAG:Ljava/lang/String; = "FingerprintManager"


# instance fields
.field private mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

.field private mContext:Landroid/content/Context;

.field private mCryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

.field private mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

.field private mHandler:Landroid/os/Handler;

.field private mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

.field private mRemovalFingerprint:Landroid/hardware/fingerprint/Fingerprint;

.field private mService:Landroid/hardware/fingerprint/IFingerprintService;

.field private mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static synthetic -get0(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    return-object v0
.end method

.method static synthetic -get1(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .locals 1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mCryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    return-object v0
.end method

.method static synthetic -get2(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    return-object v0
.end method

.method static synthetic -get3(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    return-object v0
.end method

.method static synthetic -get5(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/Fingerprint;
    .locals 1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mRemovalFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/hardware/fingerprint/FingerprintManager;I)Ljava/lang/String;
    .locals 1
    .param p1, "acquireInfo"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/hardware/fingerprint/FingerprintManager;I)Ljava/lang/String;
    .locals 1
    .param p1, "errMsg"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)V
    .locals 0
    .param p1, "cryptoObject"    # Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->cancelAuthentication(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)V

    return-void
.end method

.method static synthetic -wrap3(Landroid/hardware/fingerprint/FingerprintManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager;->cancelEnrollment()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/fingerprint/IFingerprintService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/hardware/fingerprint/IFingerprintService;

    .prologue
    const/4 v2, 0x0

    .line 904
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    .line 999
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$1;

    invoke-direct {v0, p0}, Landroid/hardware/fingerprint/FingerprintManager$1;-><init>(Landroid/hardware/fingerprint/FingerprintManager;)V

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 905
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 906
    iput-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 907
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-nez v0, :cond_0

    .line 908
    const-string/jumbo v0, "FingerprintManager"

    const-string/jumbo v1, "FingerprintManagerService was null"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :cond_0
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;

    invoke-direct {v0, p0, p1, v2}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/content/Context;Landroid/hardware/fingerprint/FingerprintManager$MyHandler;)V

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    .line 904
    return-void
.end method

.method private cancelAuthentication(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)V
    .locals 4
    .param p1, "cryptoObject"    # Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    .prologue
    .line 930
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    .line 931
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 929
    :cond_0
    return-void

    .line 932
    :catch_0
    move-exception v0

    .line 933
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private cancelEnrollment()V
    .locals 3

    .prologue
    .line 922
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    .line 923
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/hardware/fingerprint/IFingerprintService;->cancelEnrollment(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 921
    :cond_0
    return-void

    .line 924
    :catch_0
    move-exception v0

    .line 925
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private getAcquiredString(I)Ljava/lang/String;
    .locals 5
    .param p1, "acquireInfo"    # I

    .prologue
    const/4 v4, 0x0

    .line 968
    packed-switch p1, :pswitch_data_0

    .line 987
    const/16 v2, 0x3e8

    if-lt p1, v2, :cond_0

    .line 988
    add-int/lit16 v1, p1, -0x3e8

    .line 989
    .local v1, "msgNumber":I
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 990
    const v3, 0x1070071

    .line 989
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 991
    .local v0, "msgArray":[Ljava/lang/String;
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 992
    aget-object v2, v0, v1

    return-object v2

    .line 970
    .end local v0    # "msgArray":[Ljava/lang/String;
    .end local v1    # "msgNumber":I
    :pswitch_0
    return-object v4

    .line 972
    :pswitch_1
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 973
    const v3, 0x10401fe

    .line 972
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 975
    :pswitch_2
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 976
    const v3, 0x10401ff

    .line 975
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 978
    :pswitch_3
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 979
    const v3, 0x1040200

    .line 978
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 981
    :pswitch_4
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 982
    const v3, 0x1040202

    .line 981
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 984
    :pswitch_5
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 985
    const v3, 0x1040201

    .line 984
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 995
    :cond_0
    return-object v4

    .line 968
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getCurrentUserId()I
    .locals 2

    .prologue
    .line 915
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 916
    :catch_0
    move-exception v0

    .line 917
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private getErrorString(I)Ljava/lang/String;
    .locals 4
    .param p1, "errMsg"    # I

    .prologue
    .line 938
    packed-switch p1, :pswitch_data_0

    .line 955
    :pswitch_0
    const/16 v2, 0x3e8

    if-lt p1, v2, :cond_0

    .line 956
    add-int/lit16 v1, p1, -0x3e8

    .line 957
    .local v1, "msgNumber":I
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 958
    const v3, 0x1070072

    .line 957
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 959
    .local v0, "msgArray":[Ljava/lang/String;
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 960
    aget-object v2, v0, v1

    return-object v2

    .line 940
    .end local v0    # "msgArray":[Ljava/lang/String;
    .end local v1    # "msgNumber":I
    :pswitch_1
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 941
    const v3, 0x1040208

    .line 940
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 943
    :pswitch_2
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 944
    const v3, 0x1040203

    .line 943
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 946
    :pswitch_3
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 947
    const v3, 0x1040204

    .line 946
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 949
    :pswitch_4
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const v3, 0x1040205

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 951
    :pswitch_5
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const v3, 0x1040206

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 953
    :pswitch_6
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const v3, 0x1040207

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 963
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 938
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private useHandler(Landroid/os/Handler;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x0

    .line 450
    if-eqz p1, :cond_1

    .line 451
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/os/Looper;Landroid/hardware/fingerprint/FingerprintManager$MyHandler;)V

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 453
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/os/Looper;Landroid/hardware/fingerprint/FingerprintManager$MyHandler;)V

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method


# virtual methods
.method public addLockoutResetCallback(Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

    .prologue
    .line 757
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v2, :cond_0

    .line 759
    :try_start_0
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/PowerManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 760
    .local v1, "powerManager":Landroid/os/PowerManager;
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 761
    new-instance v3, Landroid/hardware/fingerprint/FingerprintManager$2;

    invoke-direct {v3, p0, v1, p1}, Landroid/hardware/fingerprint/FingerprintManager$2;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/os/PowerManager;Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;)V

    .line 760
    invoke-interface {v2, v3}, Landroid/hardware/fingerprint/IFingerprintService;->addLockoutResetCallback(Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    .end local v1    # "powerManager":Landroid/os/PowerManager;
    :goto_0
    return-void

    .line 780
    :catch_0
    move-exception v0

    .line 781
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 784
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string/jumbo v2, "FingerprintManager"

    const-string/jumbo v3, "addLockoutResetCallback(): Service not connected!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V
    .locals 7
    .param p1, "crypto"    # Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;

    .prologue
    .line 442
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;I)V

    .line 441
    return-void
.end method

.method public authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;I)V
    .locals 9
    .param p1, "crypto"    # Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "userId"    # I

    .prologue
    .line 464
    if-nez p4, :cond_0

    .line 465
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must supply an authentication callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 468
    :cond_0
    if-eqz p2, :cond_2

    .line 469
    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    const-string/jumbo v0, "FingerprintManager"

    const-string/jumbo v1, "authentication already canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    return-void

    .line 473
    :cond_1
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;

    invoke-direct {v0, p0, p1}, Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)V

    invoke-virtual {p2, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 477
    :cond_2
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_3

    .line 478
    :try_start_0
    invoke-direct {p0, p5}, Landroid/hardware/fingerprint/FingerprintManager;->useHandler(Landroid/os/Handler;)V

    .line 479
    iput-object p4, p0, Landroid/hardware/fingerprint/FingerprintManager;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    .line 480
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mCryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    .line 481
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getOpId()J

    move-result-wide v2

    .line 482
    .local v2, "sessionId":J
    :goto_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/hardware/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 483
    iget-object v4, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    move v4, p6

    move v6, p3

    .line 482
    invoke-interface/range {v0 .. v7}, Landroid/hardware/fingerprint/IFingerprintService;->authenticate(Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    .end local v2    # "sessionId":J
    :cond_3
    :goto_1
    return-void

    .line 481
    :cond_4
    const-wide/16 v2, 0x0

    .restart local v2    # "sessionId":J
    goto :goto_0

    .line 484
    .end local v2    # "sessionId":J
    :catch_0
    move-exception v8

    .line 485
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "FingerprintManager"

    const-string/jumbo v1, "Remote exception while authenticating: "

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 486
    if-eqz p4, :cond_3

    .line 490
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    .line 489
    const/4 v1, 0x1

    invoke-virtual {p4, v1, v0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public authenticateFido(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationFidoCallback;Landroid/hardware/fingerprint/FingerprintFidoIn;)V
    .locals 11
    .param p1, "crypto"    # Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationFidoCallback;
    .param p4, "fidoIn"    # Landroid/hardware/fingerprint/FingerprintFidoIn;

    .prologue
    const/4 v10, 0x1

    .line 1093
    if-nez p3, :cond_0

    .line 1094
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must supply an authentication callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1096
    :cond_0
    if-eqz p2, :cond_2

    .line 1097
    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1098
    const-string/jumbo v0, "FingerprintManager"

    const-string/jumbo v1, "authenticateFido already canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    return-void

    .line 1101
    :cond_1
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;

    invoke-direct {v0, p0, p1}, Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)V

    invoke-virtual {p2, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 1104
    :cond_2
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_3

    .line 1105
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Landroid/hardware/fingerprint/FingerprintManager;->useHandler(Landroid/os/Handler;)V

    .line 1106
    const-string/jumbo v0, "FingerprintManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "authenticateFido, fidoIn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    iput-object p3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    .line 1108
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    const-wide/16 v2, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    iget-object v5, p0, Landroid/hardware/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 1109
    iget-object v6, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1108
    const/4 v6, 0x0

    move-object v8, p4

    invoke-interface/range {v0 .. v8}, Landroid/hardware/fingerprint/IFingerprintService;->authenticateFido(Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;Landroid/hardware/fingerprint/FingerprintFidoIn;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1092
    :cond_3
    :goto_0
    return-void

    .line 1110
    :catch_0
    move-exception v9

    .line 1111
    .local v9, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "FingerprintManager"

    const-string/jumbo v1, "Remote exception while authenticating: "

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1112
    if-eqz p3, :cond_3

    .line 1115
    invoke-direct {p0, v10}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    .line 1114
    invoke-virtual {p3, v10, v0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationFidoCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public enroll([BLandroid/os/CancellationSignal;IILandroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;)V
    .locals 9
    .param p1, "token"    # [B
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 514
    const/4 v0, -0x2

    if-ne p4, v0, :cond_0

    .line 515
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getCurrentUserId()I

    move-result p4

    .line 517
    :cond_0
    if-nez p5, :cond_1

    .line 518
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must supply an enrollment callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 521
    :cond_1
    if-eqz p2, :cond_3

    .line 522
    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 523
    const-string/jumbo v0, "FingerprintManager"

    const-string/jumbo v1, "enrollment already canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    return-void

    .line 526
    :cond_2
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$OnEnrollCancelListener;

    invoke-direct {v0, p0, v1}, Landroid/hardware/fingerprint/FingerprintManager$OnEnrollCancelListener;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$OnEnrollCancelListener;)V

    invoke-virtual {p2, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 530
    :cond_3
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_4

    .line 531
    :try_start_0
    iput-object p5, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    .line 532
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/hardware/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 533
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    move-object v2, p1

    move v3, p4

    move v5, p3

    .line 532
    invoke-interface/range {v0 .. v6}, Landroid/hardware/fingerprint/IFingerprintService;->enroll(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    :cond_4
    :goto_0
    return-void

    .line 534
    :catch_0
    move-exception v7

    .line 535
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "FingerprintManager"

    const-string/jumbo v1, "Remote exception in enroll: "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 536
    if-eqz p5, :cond_4

    .line 540
    invoke-direct {p0, v8}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    .line 539
    invoke-virtual {p5, v8, v0}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public extCmd(II)I
    .locals 7
    .param p1, "cmd"    # I
    .param p2, "param"    # I

    .prologue
    .line 1065
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    .line 1067
    :try_start_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getCurrentUserId()I

    move-result v2

    .line 1068
    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    move v3, p1

    move v4, p2

    .line 1067
    invoke-interface/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintService;->extCmd(Landroid/os/IBinder;IIILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 1069
    :catch_0
    move-exception v6

    .line 1070
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "FingerprintManager"

    const-string/jumbo v1, "Remote exception in extCmd(): "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1075
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, -0x1

    return v0

    .line 1073
    :cond_0
    const-string/jumbo v0, "FingerprintManager"

    const-string/jumbo v1, "extCmd(): Service not connected!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAuthenticatorId()J
    .locals 4

    .prologue
    .line 722
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    .line 724
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/hardware/fingerprint/IFingerprintService;->getAuthenticatorId(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 725
    :catch_0
    move-exception v0

    .line 726
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 729
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string/jumbo v1, "FingerprintManager"

    const-string/jumbo v2, "getAuthenticatorId(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public getEnrolledFingerprints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 661
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnrolledFingerprints(I)Ljava/util/List;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 645
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    .line 646
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/hardware/fingerprint/IFingerprintService;->getEnrolledFingerprints(ILjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 647
    :catch_0
    move-exception v0

    .line 648
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 650
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v2
.end method

.method public hasEnrolledFingerprints()Z
    .locals 4

    .prologue
    .line 671
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    .line 672
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 673
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 672
    invoke-interface {v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintService;->hasEnrolledFingerprints(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 674
    :catch_0
    move-exception v0

    .line 675
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 677
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public hasEnrolledFingerprints(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 687
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    .line 688
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/hardware/fingerprint/IFingerprintService;->hasEnrolledFingerprints(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 689
    :catch_0
    move-exception v0

    .line 690
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 692
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isHardwareDetected()Z
    .locals 5

    .prologue
    .line 702
    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v3, :cond_0

    .line 704
    const-wide/16 v0, 0x0

    .line 705
    .local v0, "deviceId":J
    :try_start_0
    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v4, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v1, v4}, Landroid/hardware/fingerprint/IFingerprintService;->isHardwareDetected(JLjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 706
    :catch_0
    move-exception v2

    .line 707
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 710
    .end local v0    # "deviceId":J
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string/jumbo v3, "FingerprintManager"

    const-string/jumbo v4, "isFingerprintHardwareDetected(): Service not connected!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const/4 v3, 0x0

    return v3
.end method

.method public postEnroll()I
    .locals 4

    .prologue
    .line 567
    const/4 v1, 0x0

    .line 568
    .local v1, "result":I
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v2, :cond_0

    .line 569
    :try_start_0
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v2, v3}, Landroid/hardware/fingerprint/IFingerprintService;->postEnroll(Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 573
    :cond_0
    return v1

    .line 570
    :catch_0
    move-exception v0

    .line 571
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public preEnroll()J
    .locals 5

    .prologue
    .line 552
    const-wide/16 v2, 0x0

    .line 553
    .local v2, "result":J
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    .line 554
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v4, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v4}, Landroid/hardware/fingerprint/IFingerprintService;->preEnroll(Landroid/os/IBinder;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 558
    :cond_0
    return-wide v2

    .line 555
    :catch_0
    move-exception v0

    .line 556
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public remove(Landroid/hardware/fingerprint/Fingerprint;ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V
    .locals 8
    .param p1, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p2, "userId"    # I
    .param p3, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    .prologue
    const/4 v7, 0x1

    .line 602
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    .line 603
    :try_start_0
    iput-object p3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    .line 604
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mRemovalFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    .line 605
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v2

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v3

    iget-object v5, p0, Landroid/hardware/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move v4, p2

    invoke-interface/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintService;->remove(Landroid/os/IBinder;IIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 606
    :catch_0
    move-exception v6

    .line 607
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "FingerprintManager"

    const-string/jumbo v1, "Remote exception in remove: "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 608
    if-eqz p3, :cond_0

    .line 610
    invoke-direct {p0, v7}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    .line 609
    invoke-virtual {p3, p1, v7, v0}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;->onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public rename(IILjava/lang/String;)V
    .locals 3
    .param p1, "fpId"    # I
    .param p2, "userId"    # I
    .param p3, "newName"    # Ljava/lang/String;

    .prologue
    .line 626
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    .line 628
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v1, p1, p2, p3}, Landroid/hardware/fingerprint/IFingerprintService;->rename(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    :goto_0
    return-void

    .line 629
    :catch_0
    move-exception v0

    .line 630
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 633
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string/jumbo v1, "FingerprintManager"

    const-string/jumbo v2, "rename(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resetTimeout([B)V
    .locals 3
    .param p1, "token"    # [B

    .prologue
    .line 742
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    .line 744
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v1, p1}, Landroid/hardware/fingerprint/IFingerprintService;->resetTimeout([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 741
    :goto_0
    return-void

    .line 745
    :catch_0
    move-exception v0

    .line 746
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 749
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string/jumbo v1, "FingerprintManager"

    const-string/jumbo v2, "resetTimeout(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setActiveUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 584
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    .line 585
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v1, p1}, Landroid/hardware/fingerprint/IFingerprintService;->setActiveUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    :cond_0
    return-void

    .line 586
    :catch_0
    move-exception v0

    .line 587
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setNavigationEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x2

    .line 1082
    if-eqz p1, :cond_0

    .line 1083
    const/4 v0, 0x3

    invoke-virtual {p0, v1, v0}, Landroid/hardware/fingerprint/FingerprintManager;->extCmd(II)I

    .line 1081
    :goto_0
    return-void

    .line 1085
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/hardware/fingerprint/FingerprintManager;->extCmd(II)I

    goto :goto_0
.end method
