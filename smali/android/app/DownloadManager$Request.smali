.class public Landroid/app/DownloadManager$Request;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final INSTALL_WAY_Manual:I = 0x2

.field public static final INSTALL_WAY_NONE:I = 0x0

.field public static final INSTALL_WAY_SILENCE:I = 0x1

.field public static final NETWORK_BLUETOOTH:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NETWORK_MOBILE:I = 0x1

.field public static final NETWORK_WIFI:I = 0x2

.field private static final SCANNABLE_VALUE_NO:I = 0x2

.field private static final SCANNABLE_VALUE_YES:I = 0x0

.field public static final VISIBILITY_HIDDEN:I = 0x2

.field public static final VISIBILITY_VISIBLE:I = 0x0

.field public static final VISIBILITY_VISIBLE_NOTIFY_COMPLETED:I = 0x1

.field public static final VISIBILITY_VISIBLE_NOTIFY_ONLY_COMPLETION:I = 0x3


# instance fields
.field private mAllowedNetworkTypes:I

.field private mApkPackageName:Ljava/lang/String;

.field private mAppointName:Ljava/lang/String;

.field private mBypassRecommendedSizeLimit:Z

.field private mColumnAppData:Ljava/lang/String;

.field private mDescription:Ljava/lang/CharSequence;

.field private mDestinationUri:Landroid/net/Uri;

.field private mExtra:Ljava/lang/String;

.field private mExtra2:Ljava/lang/String;

.field private mFileHash:Ljava/lang/String;

.field private mFileIconUri:Landroid/net/Uri;

.field private mFileSize:J

.field private mFlags:I

.field private mInstallWay:I

.field private mIsVisibleInDownloadsUi:Z

.field private mMeteredAllowed:Z

.field private mMimeType:Ljava/lang/String;

.field private mNotificationClass:Ljava/lang/String;

.field private mNotificationVisibility:I

.field private mRequestHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRoamingAllowed:Z

.field private mScannable:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mUri:Landroid/net/Uri;

.field private mUseSystemCache:Z

.field private mUserAgent:Ljava/lang/String;

.field private mXlVipStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Landroid/app/DownloadManager$Request;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/app/DownloadManager$Request;->-assertionsDisabled:Z

    .line 590
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 613
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    .line 617
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/DownloadManager$Request;->mAllowedNetworkTypes:I

    .line 618
    iput-boolean v1, p0, Landroid/app/DownloadManager$Request;->mRoamingAllowed:Z

    .line 619
    iput-boolean v1, p0, Landroid/app/DownloadManager$Request;->mMeteredAllowed:Z

    .line 620
    iput v2, p0, Landroid/app/DownloadManager$Request;->mFlags:I

    .line 621
    iput-boolean v1, p0, Landroid/app/DownloadManager$Request;->mIsVisibleInDownloadsUi:Z

    .line 622
    iput-boolean v2, p0, Landroid/app/DownloadManager$Request;->mScannable:Z

    .line 623
    iput-boolean v2, p0, Landroid/app/DownloadManager$Request;->mUseSystemCache:Z

    .line 665
    iput v2, p0, Landroid/app/DownloadManager$Request;->mNotificationVisibility:I

    .line 687
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/app/DownloadManager$Request;->mFileSize:J

    .line 693
    iput v2, p0, Landroid/app/DownloadManager$Request;->mXlVipStatus:I

    .line 695
    iput v2, p0, Landroid/app/DownloadManager$Request;->mInstallWay:I

    .line 703
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$Request;->checkUri(Landroid/net/Uri;)V

    .line 704
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mUri:Landroid/net/Uri;

    .line 702
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "uriString"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 613
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    .line 617
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/DownloadManager$Request;->mAllowedNetworkTypes:I

    .line 618
    iput-boolean v1, p0, Landroid/app/DownloadManager$Request;->mRoamingAllowed:Z

    .line 619
    iput-boolean v1, p0, Landroid/app/DownloadManager$Request;->mMeteredAllowed:Z

    .line 620
    iput v2, p0, Landroid/app/DownloadManager$Request;->mFlags:I

    .line 621
    iput-boolean v1, p0, Landroid/app/DownloadManager$Request;->mIsVisibleInDownloadsUi:Z

    .line 622
    iput-boolean v2, p0, Landroid/app/DownloadManager$Request;->mScannable:Z

    .line 623
    iput-boolean v2, p0, Landroid/app/DownloadManager$Request;->mUseSystemCache:Z

    .line 665
    iput v2, p0, Landroid/app/DownloadManager$Request;->mNotificationVisibility:I

    .line 687
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/app/DownloadManager$Request;->mFileSize:J

    .line 693
    iput v2, p0, Landroid/app/DownloadManager$Request;->mXlVipStatus:I

    .line 695
    iput v2, p0, Landroid/app/DownloadManager$Request;->mInstallWay:I

    .line 724
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/app/DownloadManager$Request;->mUri:Landroid/net/Uri;

    .line 723
    return-void
.end method

.method private checkUri(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 708
    if-nez p1, :cond_0

    .line 709
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "uri is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 712
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 713
    .local v0, "scheme":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 714
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can not handle uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 717
    :cond_1
    const-string/jumbo v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 707
    :cond_2
    return-void

    .line 717
    :cond_3
    const-string/jumbo v1, "ftp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 718
    const-string/jumbo v1, "ed2k"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "magnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 719
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can not handle uri:: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private encodeHttpHeaders(Landroid/content/ContentValues;)V
    .locals 6
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 1112
    const/4 v3, 0x0

    .line 1113
    .local v3, "index":I
    iget-object v4, p0, Landroid/app/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "header$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1114
    .local v0, "header":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1115
    .local v2, "headerString":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "http_header_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1111
    .end local v0    # "header":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "headerString":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "contentValues"    # Landroid/content/ContentValues;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 1121
    if-eqz p3, :cond_0

    .line 1122
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    :cond_0
    return-void
.end method

.method private setDestinationFromBase(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p1, "base"    # Ljava/io/File;
    .param p2, "subPath"    # Ljava/lang/String;

    .prologue
    .line 836
    if-nez p2, :cond_0

    .line 837
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "subPath cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 839
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/app/DownloadManager$Request;->mDestinationUri:Landroid/net/Uri;

    .line 835
    return-void
.end method


# virtual methods
.method public addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    .locals 2
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 860
    if-nez p1, :cond_0

    .line 861
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "header cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 863
    :cond_0
    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 864
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "header may not contain \':\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 866
    :cond_1
    if-nez p2, :cond_2

    .line 867
    const-string/jumbo p2, ""

    .line 869
    :cond_2
    iget-object v0, p0, Landroid/app/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 870
    return-object p0
.end method

.method public allowScanningByMediaScanner()V
    .locals 1

    .prologue
    .line 847
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/DownloadManager$Request;->mScannable:Z

    .line 846
    return-void
.end method

.method public setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 960
    iput p1, p0, Landroid/app/DownloadManager$Request;->mAllowedNetworkTypes:I

    .line 961
    return-object p0
.end method

.method public setAllowedOverMetered(Z)Landroid/app/DownloadManager$Request;
    .locals 0
    .param p1, "allow"    # Z

    .prologue
    .line 982
    iput-boolean p1, p0, Landroid/app/DownloadManager$Request;->mMeteredAllowed:Z

    .line 983
    return-object p0
.end method

.method public setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;
    .locals 0
    .param p1, "allowed"    # Z

    .prologue
    .line 971
    iput-boolean p1, p0, Landroid/app/DownloadManager$Request;->mRoamingAllowed:Z

    .line 972
    return-object p0
.end method

.method public setApkPackageName(Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1050
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mApkPackageName:Ljava/lang/String;

    .line 1051
    return-object p0
.end method

.method public setAppData(Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    .locals 0
    .param p1, "appData"    # Ljava/lang/String;

    .prologue
    .line 1143
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mColumnAppData:Ljava/lang/String;

    .line 1144
    return-object p0
.end method

.method public setAppointName(Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    .locals 0
    .param p1, "appointName"    # Ljava/lang/String;

    .prologue
    .line 1133
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mAppointName:Ljava/lang/String;

    .line 1134
    return-object p0
.end method

.method public setBypassRecommendedSizeLimit(Z)V
    .locals 0
    .param p1, "bypass"    # Z

    .prologue
    .line 1172
    iput-boolean p1, p0, Landroid/app/DownloadManager$Request;->mBypassRecommendedSizeLimit:Z

    .line 1171
    return-void
.end method

.method public setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 889
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mDescription:Ljava/lang/CharSequence;

    .line 890
    return-object p0
.end method

.method public setDestinationInExternalFilesDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dirType"    # Ljava/lang/String;
    .param p3, "subPath"    # Ljava/lang/String;

    .prologue
    .line 783
    invoke-virtual {p1, p2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 784
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_0

    .line 785
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Failed to get external storage files directory"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 786
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 787
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    .line 788
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 789
    const-string/jumbo v3, " already exists and is not a directory"

    .line 788
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 792
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2

    .line 793
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to create directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 794
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 793
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 797
    :cond_2
    invoke-direct {p0, v0, p3}, Landroid/app/DownloadManager$Request;->setDestinationFromBase(Ljava/io/File;Ljava/lang/String;)V

    .line 798
    return-object p0
.end method

.method public setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    .locals 4
    .param p1, "dirType"    # Ljava/lang/String;
    .param p2, "subPath"    # Ljava/lang/String;

    .prologue
    .line 817
    invoke-static {p1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 818
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_0

    .line 819
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Failed to get external storage public directory"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 820
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 821
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    .line 822
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 823
    const-string/jumbo v3, " already exists and is not a directory"

    .line 822
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 826
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2

    .line 827
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to create directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 828
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 827
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 831
    :cond_2
    invoke-direct {p0, v0, p2}, Landroid/app/DownloadManager$Request;->setDestinationFromBase(Ljava/io/File;Ljava/lang/String;)V

    .line 832
    return-object p0
.end method

.method public setDestinationToSystemCache()Landroid/app/DownloadManager$Request;
    .locals 1

    .prologue
    .line 759
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/DownloadManager$Request;->mUseSystemCache:Z

    .line 760
    return-object p0
.end method

.method public setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 741
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mDestinationUri:Landroid/net/Uri;

    .line 742
    return-object p0
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0
    .param p1, "extra"    # Ljava/lang/String;

    .prologue
    .line 1200
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mExtra:Ljava/lang/String;

    .line 1199
    return-void
.end method

.method public setExtra2(Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    .locals 0
    .param p1, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 1045
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mExtra2:Ljava/lang/String;

    .line 1046
    return-object p0
.end method

.method public setFileHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileHash"    # Ljava/lang/String;

    .prologue
    .line 1186
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mFileHash:Ljava/lang/String;

    .line 1185
    return-void
.end method

.method public setFileIconUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1040
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mFileIconUri:Landroid/net/Uri;

    .line 1041
    return-object p0
.end method

.method public setFileSize(J)Landroid/app/DownloadManager$Request;
    .locals 1
    .param p1, "fileSize"    # J

    .prologue
    .line 1035
    iput-wide p1, p0, Landroid/app/DownloadManager$Request;->mFileSize:J

    .line 1036
    return-object p0
.end method

.method public setInstallWay(I)V
    .locals 0
    .param p1, "installWay"    # I

    .prologue
    .line 1193
    iput p1, p0, Landroid/app/DownloadManager$Request;->mInstallWay:I

    .line 1192
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 901
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mMimeType:Ljava/lang/String;

    .line 902
    return-object p0
.end method

.method public setNotificationClass(Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    .locals 0
    .param p1, "notificationClass"    # Ljava/lang/String;

    .prologue
    .line 1153
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mNotificationClass:Ljava/lang/String;

    .line 1154
    return-object p0
.end method

.method public setNotificationVisibility(I)Landroid/app/DownloadManager$Request;
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 942
    iput p1, p0, Landroid/app/DownloadManager$Request;->mNotificationVisibility:I

    .line 943
    return-object p0
.end method

.method public setRequiresCharging(Z)Landroid/app/DownloadManager$Request;
    .locals 1
    .param p1, "requiresCharging"    # Z

    .prologue
    .line 994
    if-eqz p1, :cond_0

    .line 995
    iget v0, p0, Landroid/app/DownloadManager$Request;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/app/DownloadManager$Request;->mFlags:I

    .line 999
    :goto_0
    return-object p0

    .line 997
    :cond_0
    iget v0, p0, Landroid/app/DownloadManager$Request;->mFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/app/DownloadManager$Request;->mFlags:I

    goto :goto_0
.end method

.method public setRequiresDeviceIdle(Z)Landroid/app/DownloadManager$Request;
    .locals 1
    .param p1, "requiresDeviceIdle"    # Z

    .prologue
    .line 1014
    if-eqz p1, :cond_0

    .line 1015
    iget v0, p0, Landroid/app/DownloadManager$Request;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/app/DownloadManager$Request;->mFlags:I

    .line 1019
    :goto_0
    return-object p0

    .line 1017
    :cond_0
    iget v0, p0, Landroid/app/DownloadManager$Request;->mFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/app/DownloadManager$Request;->mFlags:I

    goto :goto_0
.end method

.method public setShowRunningNotification(Z)Landroid/app/DownloadManager$Request;
    .locals 1
    .param p1, "show"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 920
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    move-result-object v0

    :goto_0
    return-object v0

    .line 921
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    move-result-object v0

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 880
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mTitle:Ljava/lang/CharSequence;

    .line 881
    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p1, "agent"    # Ljava/lang/String;

    .prologue
    .line 1163
    iput-object p1, p0, Landroid/app/DownloadManager$Request;->mUserAgent:Ljava/lang/String;

    .line 1162
    return-void
.end method

.method public setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;
    .locals 0
    .param p1, "isVisible"    # Z

    .prologue
    .line 1029
    iput-boolean p1, p0, Landroid/app/DownloadManager$Request;->mIsVisibleInDownloadsUi:Z

    .line 1030
    return-object p0
.end method

.method public setXlVipStatus(I)V
    .locals 0
    .param p1, "vipstatus"    # I

    .prologue
    .line 1179
    iput p1, p0, Landroid/app/DownloadManager$Request;->mXlVipStatus:I

    .line 1178
    return-void
.end method

.method toContentValues(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1059
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1060
    .local v0, "values":Landroid/content/ContentValues;
    sget-boolean v1, Landroid/app/DownloadManager$Request;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/app/DownloadManager$Request;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    move v1, v4

    :goto_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    move v1, v3

    goto :goto_0

    .line 1061
    :cond_1
    const-string/jumbo v1, "uri"

    iget-object v5, p0, Landroid/app/DownloadManager$Request;->mUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    const-string/jumbo v1, "is_public_api"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1063
    const-string/jumbo v1, "notificationpackage"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    iget-object v1, p0, Landroid/app/DownloadManager$Request;->mDestinationUri:Landroid/net/Uri;

    if-eqz v1, :cond_4

    .line 1066
    const-string/jumbo v1, "destination"

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1067
    const-string/jumbo v1, "hint"

    iget-object v4, p0, Landroid/app/DownloadManager$Request;->mDestinationUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    :goto_1
    const-string/jumbo v1, "scanned"

    iget-boolean v4, p0, Landroid/app/DownloadManager$Request;->mScannable:Z

    if-eqz v4, :cond_2

    move v2, v3

    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1078
    iget-object v1, p0, Landroid/app/DownloadManager$Request;->mRequestHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1079
    invoke-direct {p0, v0}, Landroid/app/DownloadManager$Request;->encodeHttpHeaders(Landroid/content/ContentValues;)V

    .line 1082
    :cond_3
    const-string/jumbo v1, "title"

    iget-object v2, p0, Landroid/app/DownloadManager$Request;->mTitle:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1, v2}, Landroid/app/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1083
    const-string/jumbo v1, "description"

    iget-object v2, p0, Landroid/app/DownloadManager$Request;->mDescription:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1, v2}, Landroid/app/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1084
    const-string/jumbo v1, "mimetype"

    iget-object v2, p0, Landroid/app/DownloadManager$Request;->mMimeType:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Landroid/app/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1086
    const-string/jumbo v1, "visibility"

    iget v2, p0, Landroid/app/DownloadManager$Request;->mNotificationVisibility:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1087
    const-string/jumbo v1, "allowed_network_types"

    iget v2, p0, Landroid/app/DownloadManager$Request;->mAllowedNetworkTypes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1088
    const-string/jumbo v1, "allow_roaming"

    iget-boolean v2, p0, Landroid/app/DownloadManager$Request;->mRoamingAllowed:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1089
    const-string/jumbo v1, "allow_metered"

    iget-boolean v2, p0, Landroid/app/DownloadManager$Request;->mMeteredAllowed:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1090
    const-string/jumbo v1, "flags"

    iget v2, p0, Landroid/app/DownloadManager$Request;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1091
    const-string/jumbo v1, "is_visible_in_downloads_ui"

    iget-boolean v2, p0, Landroid/app/DownloadManager$Request;->mIsVisibleInDownloadsUi:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1094
    const-string/jumbo v1, "entity"

    iget-object v2, p0, Landroid/app/DownloadManager$Request;->mColumnAppData:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Landroid/app/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1095
    const-string/jumbo v1, "appointname"

    iget-object v2, p0, Landroid/app/DownloadManager$Request;->mAppointName:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Landroid/app/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1096
    const-string/jumbo v1, "notificationclass"

    iget-object v2, p0, Landroid/app/DownloadManager$Request;->mNotificationClass:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Landroid/app/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1097
    const-string/jumbo v1, "useragent"

    iget-object v2, p0, Landroid/app/DownloadManager$Request;->mUserAgent:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Landroid/app/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1099
    const-string/jumbo v1, "total_bytes"

    iget-wide v2, p0, Landroid/app/DownloadManager$Request;->mFileSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1101
    const-string/jumbo v1, "download_task_thumbnail"

    iget-object v2, p0, Landroid/app/DownloadManager$Request;->mFileIconUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v1, v2}, Landroid/app/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1102
    const-string/jumbo v1, "download_extra2"

    iget-object v2, p0, Landroid/app/DownloadManager$Request;->mExtra2:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Landroid/app/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1103
    const-string/jumbo v1, "apk_package_name"

    iget-object v2, p0, Landroid/app/DownloadManager$Request;->mApkPackageName:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Landroid/app/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1104
    const-string/jumbo v1, "download_file_hash"

    iget-object v2, p0, Landroid/app/DownloadManager$Request;->mFileHash:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Landroid/app/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1105
    const-string/jumbo v1, "download_apk_install_way"

    iget v2, p0, Landroid/app/DownloadManager$Request;->mInstallWay:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1106
    const-string/jumbo v1, "download_extra"

    iget-object v2, p0, Landroid/app/DownloadManager$Request;->mExtra:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Landroid/app/DownloadManager$Request;->putIfNonNull(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1108
    return-object v0

    .line 1069
    :cond_4
    const-string/jumbo v4, "destination"

    .line 1070
    iget-boolean v1, p0, Landroid/app/DownloadManager$Request;->mUseSystemCache:Z

    if-eqz v1, :cond_5

    .line 1071
    const/4 v1, 0x5

    .line 1070
    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1069
    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    :cond_5
    move v1, v2

    .line 1072
    goto :goto_2
.end method
