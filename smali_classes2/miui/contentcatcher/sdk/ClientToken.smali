.class public Lmiui/contentcatcher/sdk/ClientToken;
.super Ljava/lang/Object;
.source "ClientToken.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/contentcatcher/sdk/ClientToken$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmiui/contentcatcher/sdk/ClientToken;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mJobTag:Ljava/lang/String;

.field private mParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPkgName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lmiui/contentcatcher/sdk/ClientToken$1;

    invoke-direct {v0}, Lmiui/contentcatcher/sdk/ClientToken$1;-><init>()V

    .line 62
    sput-object v0, Lmiui/contentcatcher/sdk/ClientToken;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/contentcatcher/sdk/ClientToken;->mParams:Ljava/util/HashMap;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/contentcatcher/sdk/ClientToken;->mPkgName:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/contentcatcher/sdk/ClientToken;->mJobTag:Ljava/lang/String;

    .line 22
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lmiui/contentcatcher/sdk/ClientToken;->mParams:Ljava/util/HashMap;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/contentcatcher/sdk/ClientToken;->mParams:Ljava/util/HashMap;

    .line 16
    iput-object p1, p0, Lmiui/contentcatcher/sdk/ClientToken;->mPkgName:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 86
    instance-of v1, p1, Lmiui/contentcatcher/sdk/ClientToken;

    if-nez v1, :cond_0

    .line 87
    return v0

    .line 89
    :cond_0
    invoke-virtual {p0}, Lmiui/contentcatcher/sdk/ClientToken;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Lmiui/contentcatcher/sdk/ClientToken;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public getJobTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lmiui/contentcatcher/sdk/ClientToken;->mJobTag:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lmiui/contentcatcher/sdk/ClientToken;->mParams:Ljava/util/HashMap;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lmiui/contentcatcher/sdk/ClientToken;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 80
    iget-object v0, p0, Lmiui/contentcatcher/sdk/ClientToken;->mPkgName:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    .line 81
    :goto_0
    iget-object v2, p0, Lmiui/contentcatcher/sdk/ClientToken;->mJobTag:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 80
    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lmiui/contentcatcher/sdk/ClientToken;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2f

    goto :goto_0

    .line 81
    :cond_1
    iget-object v1, p0, Lmiui/contentcatcher/sdk/ClientToken;->mJobTag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x43

    goto :goto_1
.end method

.method public isMatch(Lmiui/contentcatcher/sdk/ClientToken;)Z
    .locals 2
    .param p1, "token"    # Lmiui/contentcatcher/sdk/ClientToken;

    .prologue
    .line 46
    if-eq p0, p1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lmiui/contentcatcher/sdk/ClientToken;->getPkgName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/contentcatcher/sdk/ClientToken;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {p1}, Lmiui/contentcatcher/sdk/ClientToken;->getJobTag()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmiui/contentcatcher/sdk/ClientToken;->mJobTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 46
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setJobTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "jobTag"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lmiui/contentcatcher/sdk/ClientToken;->mJobTag:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setParams(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lmiui/contentcatcher/sdk/ClientToken;->mParams:Ljava/util/HashMap;

    .line 29
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Token {pkg name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/contentcatcher/sdk/ClientToken;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mJobTag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/contentcatcher/sdk/ClientToken;->mJobTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lmiui/contentcatcher/sdk/ClientToken;->mPkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lmiui/contentcatcher/sdk/ClientToken;->mJobTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lmiui/contentcatcher/sdk/ClientToken;->mParams:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 56
    return-void
.end method
