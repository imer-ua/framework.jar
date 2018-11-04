.class public Lcom/miui/whetstone/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/AppInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/whetstone/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mPrePackageName:Ljava/lang/String;

.field public mPreUid:I

.field public mScreenPackageName:Ljava/lang/String;

.field public mScreenUid:I

.field public mTopMultiPackageName:Ljava/lang/String;

.field public mTopMultiUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/miui/whetstone/AppInfo$1;

    invoke-direct {v0}, Lcom/miui/whetstone/AppInfo$1;-><init>()V

    sput-object v0, Lcom/miui/whetstone/AppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/AppInfo;->mScreenPackageName:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/AppInfo;->mScreenUid:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/AppInfo;->mPrePackageName:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/AppInfo;->mPreUid:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/AppInfo;->mTopMultiPackageName:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/AppInfo;->mTopMultiUid:I

    .line 23
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/miui/whetstone/AppInfo;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/miui/whetstone/AppInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p1, "sPackageName"    # Ljava/lang/String;
    .param p2, "sUid"    # I
    .param p3, "pPackageName"    # Ljava/lang/String;
    .param p4, "pUid"    # I
    .param p5, "mPackageName"    # Ljava/lang/String;
    .param p6, "mUid"    # I

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/miui/whetstone/AppInfo;->mScreenPackageName:Ljava/lang/String;

    .line 16
    iput p2, p0, Lcom/miui/whetstone/AppInfo;->mScreenUid:I

    .line 17
    iput-object p3, p0, Lcom/miui/whetstone/AppInfo;->mPrePackageName:Ljava/lang/String;

    .line 18
    iput p4, p0, Lcom/miui/whetstone/AppInfo;->mPreUid:I

    .line 19
    iput-object p5, p0, Lcom/miui/whetstone/AppInfo;->mTopMultiPackageName:Ljava/lang/String;

    .line 20
    iput p6, p0, Lcom/miui/whetstone/AppInfo;->mTopMultiUid:I

    .line 14
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/whetstone/AppInfo;->mScreenPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget v0, p0, Lcom/miui/whetstone/AppInfo;->mScreenUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget-object v0, p0, Lcom/miui/whetstone/AppInfo;->mPrePackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget v0, p0, Lcom/miui/whetstone/AppInfo;->mPreUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-object v0, p0, Lcom/miui/whetstone/AppInfo;->mTopMultiPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget v0, p0, Lcom/miui/whetstone/AppInfo;->mTopMultiUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    return-void
.end method
