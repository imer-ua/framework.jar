.class public Lmiui/contentcatcher/sdk/Content;
.super Ljava/lang/Object;
.source "Content.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/contentcatcher/sdk/Content$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmiui/contentcatcher/sdk/Content;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCatchType:I

.field public mCatcherToken:Ljava/lang/String;

.field public mFavIntent:Landroid/content/Intent;

.field public mInjectorToken:Lmiui/contentcatcher/sdk/Token;

.field public mResultMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lmiui/contentcatcher/sdk/Content$1;

    invoke-direct {v0}, Lmiui/contentcatcher/sdk/Content$1;-><init>()V

    .line 79
    sput-object v0, Lmiui/contentcatcher/sdk/Content;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 12
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lmiui/contentcatcher/sdk/Token;Ljava/util/Map;)V
    .locals 2
    .param p1, "catchType"    # I
    .param p2, "catcherToken"    # Ljava/lang/String;
    .param p3, "injectorToken"    # Lmiui/contentcatcher/sdk/Token;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lmiui/contentcatcher/sdk/Token;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lmiui/contentcatcher/sdk/Content;->mCatchType:I

    .line 15
    iput-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mCatcherToken:Ljava/lang/String;

    .line 16
    iput-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mInjectorToken:Lmiui/contentcatcher/sdk/Token;

    .line 17
    iput-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mResultMap:Ljava/util/Map;

    .line 18
    iput-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mFavIntent:Landroid/content/Intent;

    .line 22
    iput p1, p0, Lmiui/contentcatcher/sdk/Content;->mCatchType:I

    .line 23
    iput-object p2, p0, Lmiui/contentcatcher/sdk/Content;->mCatcherToken:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lmiui/contentcatcher/sdk/Content;->mInjectorToken:Lmiui/contentcatcher/sdk/Token;

    .line 25
    iput-object p4, p0, Lmiui/contentcatcher/sdk/Content;->mResultMap:Ljava/util/Map;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2
    .param p1, "favIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lmiui/contentcatcher/sdk/Content;->mCatchType:I

    .line 15
    iput-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mCatcherToken:Ljava/lang/String;

    .line 16
    iput-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mInjectorToken:Lmiui/contentcatcher/sdk/Token;

    .line 17
    iput-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mResultMap:Ljava/util/Map;

    .line 18
    iput-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mFavIntent:Landroid/content/Intent;

    .line 29
    iput-object p1, p0, Lmiui/contentcatcher/sdk/Content;->mFavIntent:Landroid/content/Intent;

    .line 28
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lmiui/contentcatcher/sdk/Content;->mCatchType:I

    .line 15
    iput-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mCatcherToken:Ljava/lang/String;

    .line 16
    iput-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mInjectorToken:Lmiui/contentcatcher/sdk/Token;

    .line 17
    iput-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mResultMap:Ljava/util/Map;

    .line 18
    iput-object v1, p0, Lmiui/contentcatcher/sdk/Content;->mFavIntent:Landroid/content/Intent;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/contentcatcher/sdk/Content;->mCatchType:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mCatcherToken:Ljava/lang/String;

    .line 93
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/contentcatcher/sdk/Token;

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mInjectorToken:Lmiui/contentcatcher/sdk/Token;

    .line 94
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mResultMap:Ljava/util/Map;

    .line 95
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mFavIntent:Landroid/content/Intent;

    .line 90
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/contentcatcher/sdk/Content;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lmiui/contentcatcher/sdk/Content;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public getInjectorToken()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mInjectorToken:Lmiui/contentcatcher/sdk/Token;

    return-object v0
.end method

.method public getTargetTokens()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 34
    .local v0, "buff":Ljava/lang/StringBuffer;
    const-string/jumbo v6, "Content{ "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    iget-object v6, p0, Lmiui/contentcatcher/sdk/Content;->mFavIntent:Landroid/content/Intent;

    if-eqz v6, :cond_1

    .line 36
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mFavIntent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lmiui/contentcatcher/sdk/Content;->mFavIntent:Landroid/content/Intent;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "; "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    :cond_0
    :goto_0
    const-string/jumbo v6, "}"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 38
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mCatchType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lmiui/contentcatcher/sdk/Content;->mCatchType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "; "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mCatcherToken="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lmiui/contentcatcher/sdk/Content;->mCatcherToken:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "; "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    iget-object v6, p0, Lmiui/contentcatcher/sdk/Content;->mInjectorToken:Lmiui/contentcatcher/sdk/Token;

    if-eqz v6, :cond_2

    .line 41
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mInjectorToken="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lmiui/contentcatcher/sdk/Content;->mInjectorToken:Lmiui/contentcatcher/sdk/Token;

    invoke-virtual {v7}, Lmiui/contentcatcher/sdk/Token;->getPkgName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 42
    iget-object v7, p0, Lmiui/contentcatcher/sdk/Content;->mInjectorToken:Lmiui/contentcatcher/sdk/Token;

    invoke-virtual {v7}, Lmiui/contentcatcher/sdk/Token;->getActivityName()Ljava/lang/String;

    move-result-object v7

    .line 41
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 42
    const-string/jumbo v7, ","

    .line 41
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 42
    iget-object v7, p0, Lmiui/contentcatcher/sdk/Content;->mInjectorToken:Lmiui/contentcatcher/sdk/Token;

    invoke-virtual {v7}, Lmiui/contentcatcher/sdk/Token;->getVersionCode()I

    move-result v7

    .line 41
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    :cond_2
    iget-object v6, p0, Lmiui/contentcatcher/sdk/Content;->mResultMap:Ljava/util/Map;

    if-eqz v6, :cond_0

    .line 45
    const-string/jumbo v6, "mResultMap[ "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    iget-object v6, p0, Lmiui/contentcatcher/sdk/Content;->mResultMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "key$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 47
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 48
    .local v5, "resultValue":Ljava/lang/String;
    iget-object v6, p0, Lmiui/contentcatcher/sdk/Content;->mResultMap:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 50
    .local v4, "resultObj":Ljava/lang/Object;
    :try_start_0
    instance-of v6, v4, Landroid/graphics/Bitmap;

    if-eqz v6, :cond_3

    .line 51
    const-string/jumbo v5, "bitmap"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "; "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 53
    :cond_3
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_2

    .line 58
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "resultObj":Ljava/lang/Object;
    .end local v5    # "resultValue":Ljava/lang/String;
    :cond_4
    const-string/jumbo v6, " ]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 55
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v4    # "resultObj":Ljava/lang/Object;
    .restart local v5    # "resultValue":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 72
    iget v0, p0, Lmiui/contentcatcher/sdk/Content;->mCatchType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mCatcherToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mInjectorToken:Lmiui/contentcatcher/sdk/Token;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 75
    iget-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mResultMap:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 76
    iget-object v0, p0, Lmiui/contentcatcher/sdk/Content;->mFavIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 71
    return-void
.end method
