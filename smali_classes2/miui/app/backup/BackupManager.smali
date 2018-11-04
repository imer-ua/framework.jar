.class public Lmiui/app/backup/BackupManager;
.super Ljava/lang/Object;
.source "BackupManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/backup/BackupManager$BackupRestoreListener;,
        Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;
    }
.end annotation


# static fields
.field public static final BACKUP_FILE_HEADER_MAGIC:Ljava/lang/String; = "MIUI BACKUP\n"

.field public static final BACKUP_FILE_VERSION:I = 0x2

.field public static DOMAIN_ATTACH:Ljava/lang/String; = null

.field public static DOMAIN_BAK:Ljava/lang/String; = null

.field public static DOMAIN_END:Ljava/lang/String; = null

.field public static DOMAIN_META:Ljava/lang/String; = null

.field public static final ERR_AUTHENTICATION_FAILED:I = 0x3

.field public static final ERR_BAKFILE_BROKEN:I = 0x6

.field public static final ERR_BINDER_DIED:I = 0x8

.field public static final ERR_IO_PERMISSION:I = 0x7

.field public static final ERR_NONE:I = 0x0

.field public static final ERR_NOT_ALLOW:I = 0x9

.field public static final ERR_NO_BACKUPAGENT:I = 0x2

.field public static final ERR_UNKNOWN:I = 0x1

.field public static final ERR_VERSION_TOO_OLD:I = 0x5

.field public static final ERR_VERSION_UNSUPPORTED:I = 0x4

.field public static final FEATURE_FULL_BACKUP:I = -0x1

.field public static final PROG_TYPE_NORMAL:I = 0x0

.field public static final PROG_TYPE_RECORD:I = 0x1

.field public static final SERVICE_NAME:Ljava/lang/String; = "MiuiBackup"

.field public static final STATE_BACKUP:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_RESTORE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Backup:BackupManager"

.field public static final TYPE_NORMAL_BACKUP_TIMEOUT_SCALE:I = 0x1

.field public static final TYPE_RECORD_BACKUP_TIMEOUT_SCALE:I = 0x6

.field private static mSystemAppWhiteSet:Ljava/util/HashSet;

.field private static sProgRecordAppSet:Ljava/util/HashSet;

.field private static sWRInstance:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/app/backup/BackupManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBackupRestoreLatch:Ljava/lang/Object;

.field private mBackupRestoreListener:Lmiui/app/backup/BackupManager$BackupRestoreListener;

.field private mContext:Landroid/content/Context;

.field private mICaller:Landroid/os/IBinder;

.field private mIsAcquired:Z

.field private mPips:[Landroid/os/ParcelFileDescriptor;

.field private mService:Lmiui/app/backup/IBackupManager;

.field private mTransactionLatch:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static synthetic -get0(Lmiui/app/backup/BackupManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mBackupRestoreLatch:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1(Lmiui/app/backup/BackupManager;)Lmiui/app/backup/BackupManager$BackupRestoreListener;
    .locals 1

    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mBackupRestoreListener:Lmiui/app/backup/BackupManager$BackupRestoreListener;

    return-object v0
.end method

.method static synthetic -get2(Lmiui/app/backup/BackupManager;)[Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method static synthetic -get3(Lmiui/app/backup/BackupManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lmiui/app/backup/BackupManager;->mTransactionLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -set0(Lmiui/app/backup/BackupManager;Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iput-object p1, p0, Lmiui/app/backup/BackupManager;->mTransactionLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    const-string/jumbo v0, "miui_bak"

    sput-object v0, Lmiui/app/backup/BackupManager;->DOMAIN_BAK:Ljava/lang/String;

    .line 63
    const-string/jumbo v0, "miui_meta"

    sput-object v0, Lmiui/app/backup/BackupManager;->DOMAIN_META:Ljava/lang/String;

    .line 67
    const-string/jumbo v0, "miui_att"

    sput-object v0, Lmiui/app/backup/BackupManager;->DOMAIN_ATTACH:Ljava/lang/String;

    .line 71
    const-string/jumbo v0, "miui_end"

    sput-object v0, Lmiui/app/backup/BackupManager;->DOMAIN_END:Ljava/lang/String;

    .line 139
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/app/backup/BackupManager;->mSystemAppWhiteSet:Ljava/util/HashSet;

    .line 141
    sget-object v0, Lmiui/app/backup/BackupManager;->mSystemAppWhiteSet:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.browser"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object v0, Lmiui/app/backup/BackupManager;->mSystemAppWhiteSet:Ljava/util/HashSet;

    const-string/jumbo v1, "pro.burgerz.miweather8"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object v0, Lmiui/app/backup/BackupManager;->mSystemAppWhiteSet:Ljava/util/HashSet;

    const-string/jumbo v1, "com.miui.notes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v0, Lmiui/app/backup/BackupManager;->mSystemAppWhiteSet:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.email"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/app/backup/BackupManager;->sProgRecordAppSet:Ljava/util/HashSet;

    .line 174
    sget-object v0, Lmiui/app/backup/BackupManager;->sProgRecordAppSet:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 175
    sget-object v0, Lmiui/app/backup/BackupManager;->sProgRecordAppSet:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.mms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 23
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/app/backup/BackupManager;->mTransactionLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/app/backup/BackupManager;->mBackupRestoreLatch:Ljava/lang/Object;

    .line 98
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lmiui/app/backup/BackupManager;->mICaller:Landroid/os/IBinder;

    .line 193
    iput-object p1, p0, Lmiui/app/backup/BackupManager;->mContext:Landroid/content/Context;

    .line 194
    const-string/jumbo v0, "MiuiBackup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/app/backup/IBackupManager;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    .line 192
    return-void
.end method

.method public static final getBackupManager(Landroid/content/Context;)Lmiui/app/backup/BackupManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 184
    sget-object v1, Lmiui/app/backup/BackupManager;->sWRInstance:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    .line 185
    .local v0, "instance":Lmiui/app/backup/BackupManager;
    :goto_0
    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lmiui/app/backup/BackupManager;

    .end local v0    # "instance":Lmiui/app/backup/BackupManager;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    .line 187
    .restart local v0    # "instance":Lmiui/app/backup/BackupManager;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lmiui/app/backup/BackupManager;->sWRInstance:Ljava/lang/ref/WeakReference;

    .line 189
    :cond_0
    return-object v0

    .line 184
    .end local v0    # "instance":Lmiui/app/backup/BackupManager;
    :cond_1
    sget-object v1, Lmiui/app/backup/BackupManager;->sWRInstance:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/app/backup/BackupManager;

    move-object v0, v1

    goto :goto_0
.end method

.method public static isProgRecordApp(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "feature"    # I

    .prologue
    .line 180
    sget-object v0, Lmiui/app/backup/BackupManager;->sProgRecordAppSet:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSysAppForBackup(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 149
    const/4 v2, 0x0

    .line 150
    .local v2, "isSysApp":Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 152
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/16 v4, 0x40

    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 153
    .local v1, "info":Landroid/content/pm/PackageInfo;
    invoke-static {v1}, Lmiui/app/backup/BackupManager;->isSysAppForBackup(Landroid/content/pm/PackageInfo;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 156
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "isSysApp":Z
    :goto_0
    return v2

    .line 154
    .restart local v2    # "isSysApp":Z
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static isSysAppForBackup(Landroid/content/pm/PackageInfo;)Z
    .locals 3
    .param p0, "info"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "isSysApp":Z
    if-eqz p0, :cond_1

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    .line 164
    sget-object v1, Lmiui/app/backup/BackupManager;->mSystemAppWhiteSet:Ljava/util/HashSet;

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 163
    if-eqz v1, :cond_1

    .line 165
    :cond_0
    const/4 v0, 0x1

    .line 168
    :cond_1
    return v0
.end method


# virtual methods
.method public acquire(Lmiui/app/backup/IBackupServiceStateObserver;)Z
    .locals 3
    .param p1, "stateObserver"    # Lmiui/app/backup/IBackupServiceStateObserver;

    .prologue
    .line 105
    :try_start_0
    iget-boolean v1, p0, Lmiui/app/backup/BackupManager;->mIsAcquired:Z

    if-nez v1, :cond_0

    .line 106
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    iget-object v2, p0, Lmiui/app/backup/BackupManager;->mICaller:Landroid/os/IBinder;

    invoke-interface {v1, p1, v2}, Lmiui/app/backup/IBackupManager;->acquire(Lmiui/app/backup/IBackupServiceStateObserver;Landroid/os/IBinder;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/app/backup/BackupManager;->mIsAcquired:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lmiui/app/backup/BackupManager;->mIsAcquired:Z

    return v1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public backupPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLmiui/app/backup/BackupManager$BackupRestoreListener;)V
    .locals 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "feature"    # I
    .param p3, "pwd"    # Ljava/lang/String;
    .param p4, "encryptedPwd"    # Ljava/lang/String;
    .param p5, "includeApk"    # Z
    .param p6, "forceBackup"    # Z
    .param p7, "l"    # Lmiui/app/backup/BackupManager$BackupRestoreListener;

    .prologue
    .line 201
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lmiui/app/backup/BackupManager;->backupPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZLmiui/app/backup/BackupManager$BackupRestoreListener;)V

    .line 200
    return-void
.end method

.method public backupPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZLmiui/app/backup/BackupManager$BackupRestoreListener;)V
    .locals 17
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "feature"    # I
    .param p3, "pwd"    # Ljava/lang/String;
    .param p4, "encryptedPwd"    # Ljava/lang/String;
    .param p5, "includeApk"    # Z
    .param p6, "forceBackup"    # Z
    .param p7, "shouldSkipData"    # Z
    .param p8, "l"    # Lmiui/app/backup/BackupManager$BackupRestoreListener;

    .prologue
    .line 209
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmiui/app/backup/BackupManager;->mIsAcquired:Z

    if-nez v2, :cond_0

    .line 210
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "You must acquire first to use the backup or restore service"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 213
    :cond_0
    move-object/from16 v0, p8

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/app/backup/BackupManager;->mBackupRestoreListener:Lmiui/app/backup/BackupManager$BackupRestoreListener;

    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    if-eqz v2, :cond_2

    .line 216
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/backup/BackupManager;->mBackupRestoreLatch:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 218
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    .line 219
    new-instance v12, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v5}, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;-><init>(Lmiui/app/backup/BackupManager;Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;)V

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    .line 218
    invoke-interface/range {v2 .. v12}, Lmiui/app/backup/IBackupManager;->backupPackage(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZLmiui/app/backup/IPackageBackupRestoreObserver;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/backup/BackupManager;->mBackupRestoreLatch:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v16
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_2

    .line 233
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_1

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 236
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_2

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 208
    :cond_2
    :goto_0
    return-void

    .line 217
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v16

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 224
    :catch_0
    move-exception v14

    .line 225
    .local v14, "e":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v2, "Backup:BackupManager"

    const-string/jumbo v3, "create pipe failed"

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_2

    .line 233
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_3

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 236
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_2

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 239
    :catch_1
    move-exception v14

    .line 240
    const-string/jumbo v2, "Backup:BackupManager"

    const-string/jumbo v3, "IOException"

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 239
    .end local v14    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v14

    .line 240
    .restart local v14    # "e":Ljava/io/IOException;
    const-string/jumbo v2, "Backup:BackupManager"

    const-string/jumbo v3, "IOException"

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 228
    .end local v14    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v15

    .line 229
    .local v15, "e":Ljava/lang/InterruptedException;
    :try_start_7
    const-string/jumbo v2, "Backup:BackupManager"

    const-string/jumbo v3, "InterruptedException"

    invoke-static {v2, v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_2

    .line 233
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_4

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 236
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_2

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    .line 239
    :catch_4
    move-exception v14

    .line 240
    .restart local v14    # "e":Ljava/io/IOException;
    const-string/jumbo v2, "Backup:BackupManager"

    const-string/jumbo v3, "IOException"

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 226
    .end local v14    # "e":Ljava/io/IOException;
    .end local v15    # "e":Ljava/lang/InterruptedException;
    :catch_5
    move-exception v13

    .line 227
    .local v13, "e":Landroid/os/RemoteException;
    :try_start_9
    const-string/jumbo v2, "Backup:BackupManager"

    const-string/jumbo v3, "Remove invoking failed"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_2

    .line 233
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_5

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 236
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_2

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_0

    .line 239
    :catch_6
    move-exception v14

    .line 240
    .restart local v14    # "e":Ljava/io/IOException;
    const-string/jumbo v2, "Backup:BackupManager"

    const-string/jumbo v3, "IOException"

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 230
    .end local v13    # "e":Landroid/os/RemoteException;
    .end local v14    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v2

    .line 231
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    if-eqz v3, :cond_7

    .line 233
    :try_start_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    if-eqz v3, :cond_6

    .line 234
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 236
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    if-eqz v3, :cond_7

    .line 237
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/app/backup/BackupManager;->mPips:[Landroid/os/ParcelFileDescriptor;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 230
    :cond_7
    :goto_1
    throw v2

    .line 239
    :catch_7
    move-exception v14

    .line 240
    .restart local v14    # "e":Ljava/io/IOException;
    const-string/jumbo v3, "Backup:BackupManager"

    const-string/jumbo v4, "IOException"

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public delCacheBackup()Z
    .locals 3

    .prologue
    .line 381
    :try_start_0
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v1}, Lmiui/app/backup/IBackupManager;->delCacheBackup()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    const/4 v1, 0x1

    return v1

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "Backup:BackupManager"

    const-string/jumbo v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    const/4 v1, 0x0

    return v1
.end method

.method public getCurrentRunningPackage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 333
    :try_start_0
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v1}, Lmiui/app/backup/IBackupManager;->getCurrentRunningPackage()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "Backup:BackupManager"

    const-string/jumbo v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 337
    const/4 v1, 0x0

    return-object v1
.end method

.method public getCurrentWorkingFeature()I
    .locals 3

    .prologue
    .line 321
    :try_start_0
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v1}, Lmiui/app/backup/IBackupManager;->getCurrentWorkingFeature()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "Backup:BackupManager"

    const-string/jumbo v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 325
    const/4 v1, -0x1

    return v1
.end method

.method public getState()I
    .locals 3

    .prologue
    .line 345
    :try_start_0
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v1}, Lmiui/app/backup/IBackupManager;->getState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "Backup:BackupManager"

    const-string/jumbo v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    const/4 v1, -0x1

    return v1
.end method

.method public isServiceIdle()Z
    .locals 3

    .prologue
    .line 130
    const/4 v1, 0x0

    .line 132
    .local v1, "isIdle":Z
    :try_start_0
    iget-object v2, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v2}, Lmiui/app/backup/IBackupManager;->isServiceIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 136
    .end local v1    # "isIdle":Z
    :goto_0
    return v1

    .line 133
    .restart local v1    # "isIdle":Z
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public release(Lmiui/app/backup/IBackupServiceStateObserver;)V
    .locals 2
    .param p1, "stateObserver"    # Lmiui/app/backup/IBackupServiceStateObserver;

    .prologue
    .line 119
    :try_start_0
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Lmiui/app/backup/IBackupManager;->release(Lmiui/app/backup/IBackupServiceStateObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/app/backup/BackupManager;->mIsAcquired:Z

    .line 117
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public restoreFile(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;ZLmiui/app/backup/BackupManager$BackupRestoreListener;)V
    .locals 11
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "pwd"    # Ljava/lang/String;
    .param p3, "forceRestore"    # Z
    .param p4, "l"    # Lmiui/app/backup/BackupManager$BackupRestoreListener;

    .prologue
    const/4 v10, 0x0

    .line 253
    iget-boolean v5, p0, Lmiui/app/backup/BackupManager;->mIsAcquired:Z

    if-nez v5, :cond_0

    .line 254
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "You must acquire first to use the backup or restore service"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 257
    :cond_0
    iput-object p4, p0, Lmiui/app/backup/BackupManager;->mBackupRestoreListener:Lmiui/app/backup/BackupManager$BackupRestoreListener;

    .line 258
    const/4 v3, 0x0

    .line 260
    .local v3, "pipe":[Landroid/os/ParcelFileDescriptor;
    :try_start_0
    iget-object v6, p0, Lmiui/app/backup/BackupManager;->mBackupRestoreLatch:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 261
    :try_start_1
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 262
    .local v3, "pipe":[Landroid/os/ParcelFileDescriptor;
    const/4 v5, 0x1

    aget-object v4, v3, v5

    .line 263
    .local v4, "writeSide":Landroid/os/ParcelFileDescriptor;
    new-instance v5, Lmiui/app/backup/BackupManager$1;

    invoke-direct {v5, p0, v4, p1}, Lmiui/app/backup/BackupManager$1;-><init>(Lmiui/app/backup/BackupManager;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 295
    iget-object v5, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    const/4 v7, 0x0

    aget-object v7, v3, v7

    new-instance v8, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;-><init>(Lmiui/app/backup/BackupManager;Lmiui/app/backup/BackupManager$FullBackupRestoreObserver;)V

    invoke-interface {v5, v7, p2, p3, v8}, Lmiui/app/backup/IBackupManager;->restoreFile(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;ZLmiui/app/backup/IPackageBackupRestoreObserver;)V

    .line 297
    iget-object v5, p0, Lmiui/app/backup/BackupManager;->mBackupRestoreLatch:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 306
    if-eqz v3, :cond_1

    aget-object v5, v3, v10

    if-eqz v5, :cond_1

    .line 308
    const/4 v5, 0x0

    :try_start_3
    aget-object v5, v3, v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 252
    .end local v3    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .end local v4    # "writeSide":Landroid/os/ParcelFileDescriptor;
    :cond_1
    :goto_0
    return-void

    .line 260
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v6

    throw v5
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v5, "Backup:BackupManager"

    const-string/jumbo v6, "RemoteException"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 306
    if-eqz v3, :cond_1

    aget-object v5, v3, v10

    if-eqz v5, :cond_1

    .line 308
    const/4 v5, 0x0

    :try_start_6
    aget-object v5, v3, v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 309
    :catch_1
    move-exception v1

    .line 310
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v5, "Backup:BackupManager"

    const-string/jumbo v6, "IOException"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 309
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "writeSide":Landroid/os/ParcelFileDescriptor;
    :catch_2
    move-exception v1

    .line 310
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v5, "Backup:BackupManager"

    const-string/jumbo v6, "IOException"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 303
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .end local v4    # "writeSide":Landroid/os/ParcelFileDescriptor;
    :catch_3
    move-exception v1

    .line 304
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_7
    const-string/jumbo v5, "Backup:BackupManager"

    const-string/jumbo v6, "IOException"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 306
    if-eqz v3, :cond_1

    aget-object v5, v3, v10

    if-eqz v5, :cond_1

    .line 308
    const/4 v5, 0x0

    :try_start_8
    aget-object v5, v3, v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_0

    .line 309
    :catch_4
    move-exception v1

    .line 310
    const-string/jumbo v5, "Backup:BackupManager"

    const-string/jumbo v6, "IOException"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 301
    .end local v1    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 302
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_9
    const-string/jumbo v5, "Backup:BackupManager"

    const-string/jumbo v6, "InterruptedException"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 306
    if-eqz v3, :cond_1

    aget-object v5, v3, v10

    if-eqz v5, :cond_1

    .line 308
    const/4 v5, 0x0

    :try_start_a
    aget-object v5, v3, v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_0

    .line 309
    :catch_6
    move-exception v1

    .line 310
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v5, "Backup:BackupManager"

    const-string/jumbo v6, "IOException"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 305
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v5

    .line 306
    if-eqz v3, :cond_2

    aget-object v6, v3, v10

    if-eqz v6, :cond_2

    .line 308
    const/4 v6, 0x0

    :try_start_b
    aget-object v6, v3, v6

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 305
    :cond_2
    :goto_1
    throw v5

    .line 309
    :catch_7
    move-exception v1

    .line 310
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "Backup:BackupManager"

    const-string/jumbo v7, "IOException"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setCustomProgress(III)V
    .locals 3
    .param p1, "progType"    # I
    .param p2, "prog"    # I
    .param p3, "total"    # I

    .prologue
    .line 370
    :try_start_0
    iget-object v2, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v2}, Lmiui/app/backup/IBackupManager;->getCurrentRunningPackage()Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, "pkg":Ljava/lang/String;
    iget-object v2, p0, Lmiui/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 372
    iget-object v2, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v2, p1, p2, p3}, Lmiui/app/backup/IBackupManager;->setCustomProgress(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setIsNeedBeKilled(Z)V
    .locals 3
    .param p1, "isNeedBeKilled"    # Z

    .prologue
    .line 354
    :try_start_0
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    iget-object v2, p0, Lmiui/app/backup/BackupManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lmiui/app/backup/IBackupManager;->setIsNeedBeKilled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :goto_0
    return-void

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "Backup:BackupManager"

    const-string/jumbo v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method setWorkingError(I)V
    .locals 2
    .param p1, "errCode"    # I

    .prologue
    .line 362
    :try_start_0
    iget-object v1, p0, Lmiui/app/backup/BackupManager;->mService:Lmiui/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Lmiui/app/backup/IBackupManager;->errorOccur(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :goto_0
    return-void

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
