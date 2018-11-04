.class public Lmiui/contentcatcher/sdk/Token;
.super Ljava/lang/Object;
.source "Token.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/contentcatcher/sdk/Token$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmiui/contentcatcher/sdk/Token;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivityHashCode:Ljava/lang/String;

.field private mActivityName:Ljava/lang/String;

.field private mPkgName:Ljava/lang/String;

.field private mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lmiui/contentcatcher/sdk/Token$1;

    invoke-direct {v0}, Lmiui/contentcatcher/sdk/Token$1;-><init>()V

    .line 73
    sput-object v0, Lmiui/contentcatcher/sdk/Token;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lmiui/contentcatcher/sdk/Token;->mVersionCode:I

    .line 10
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mPkgName:Ljava/lang/String;

    .line 11
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mActivityName:Ljava/lang/String;

    .line 12
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mActivityHashCode:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lmiui/contentcatcher/sdk/Token;->mVersionCode:I

    .line 10
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mPkgName:Ljava/lang/String;

    .line 11
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mActivityName:Ljava/lang/String;

    .line 12
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mActivityHashCode:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/contentcatcher/sdk/Token;->mVersionCode:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mPkgName:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mActivityName:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mActivityHashCode:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "versionCode"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lmiui/contentcatcher/sdk/Token;->mVersionCode:I

    .line 10
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mPkgName:Ljava/lang/String;

    .line 11
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mActivityName:Ljava/lang/String;

    .line 12
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mActivityHashCode:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lmiui/contentcatcher/sdk/Token;->mActivityName:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lmiui/contentcatcher/sdk/Token;->mPkgName:Ljava/lang/String;

    .line 20
    iput p3, p0, Lmiui/contentcatcher/sdk/Token;->mVersionCode:I

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "activityHashCode"    # Ljava/lang/String;
    .param p4, "versionCode"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lmiui/contentcatcher/sdk/Token;->mVersionCode:I

    .line 10
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mPkgName:Ljava/lang/String;

    .line 11
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mActivityName:Ljava/lang/String;

    .line 12
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mActivityHashCode:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lmiui/contentcatcher/sdk/Token;->mActivityName:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lmiui/contentcatcher/sdk/Token;->mPkgName:Ljava/lang/String;

    .line 26
    iput p4, p0, Lmiui/contentcatcher/sdk/Token;->mVersionCode:I

    .line 27
    iput-object p3, p0, Lmiui/contentcatcher/sdk/Token;->mActivityHashCode:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public getActivityHashCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mActivityHashCode:Ljava/lang/String;

    return-object v0
.end method

.method public getActivityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lmiui/contentcatcher/sdk/Token;->mVersionCode:I

    return v0
.end method

.method public isMatch(Lmiui/contentcatcher/sdk/Token;)Z
    .locals 3
    .param p1, "token"    # Lmiui/contentcatcher/sdk/Token;

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-virtual {p1}, Lmiui/contentcatcher/sdk/Token;->getPkgName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiui/contentcatcher/sdk/Token;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {p1}, Lmiui/contentcatcher/sdk/Token;->getActivityName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiui/contentcatcher/sdk/Token;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 54
    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {p1}, Lmiui/contentcatcher/sdk/Token;->getVersionCode()I

    move-result v1

    iget v2, p0, Lmiui/contentcatcher/sdk/Token;->mVersionCode:I

    if-ne v1, v2, :cond_0

    .line 57
    invoke-virtual {p1}, Lmiui/contentcatcher/sdk/Token;->getActivityHashCode()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiui/contentcatcher/sdk/Token;->mActivityHashCode:Ljava/lang/String;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 54
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Token {pkg name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/contentcatcher/sdk/Token;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 86
    const-string/jumbo v1, ", activity name:"

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lmiui/contentcatcher/sdk/Token;->mActivityName:Ljava/lang/String;

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    const-string/jumbo v1, ", activityhashcode:"

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lmiui/contentcatcher/sdk/Token;->mActivityHashCode:Ljava/lang/String;

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 88
    const-string/jumbo v1, ", version:"

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 88
    iget v1, p0, Lmiui/contentcatcher/sdk/Token;->mVersionCode:I

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 88
    const-string/jumbo v1, "}"

    .line 85
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
    .line 67
    iget v0, p0, Lmiui/contentcatcher/sdk/Token;->mVersionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mPkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lmiui/contentcatcher/sdk/Token;->mActivityHashCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    return-void
.end method
