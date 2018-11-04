.class public Lmiui/process/PreloadProcessData;
.super Ljava/lang/Object;
.source "PreloadProcessData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/process/PreloadProcessData$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmiui/process/PreloadProcessData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private intent:Landroid/content/Intent;

.field private packageName:Ljava/lang/String;

.field private startActivity:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lmiui/process/PreloadProcessData$1;

    invoke-direct {v0}, Lmiui/process/PreloadProcessData$1;-><init>()V

    sput-object v0, Lmiui/process/PreloadProcessData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 10
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/process/PreloadProcessData;->packageName:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lmiui/process/PreloadProcessData;->startActivity:Z

    .line 37
    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lmiui/process/PreloadProcessData;->intent:Landroid/content/Intent;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLandroid/content/Intent;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "startActivity"    # Z
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lmiui/process/PreloadProcessData;->packageName:Ljava/lang/String;

    .line 30
    iput-boolean p2, p0, Lmiui/process/PreloadProcessData;->startActivity:Z

    .line 31
    iput-object p3, p0, Lmiui/process/PreloadProcessData;->intent:Landroid/content/Intent;

    .line 28
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lmiui/process/PreloadProcessData;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lmiui/process/PreloadProcessData;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 85
    iput-object p1, p0, Lmiui/process/PreloadProcessData;->intent:Landroid/content/Intent;

    .line 84
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lmiui/process/PreloadProcessData;->packageName:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public startActivity(Z)V
    .locals 0
    .param p1, "startActivity"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lmiui/process/PreloadProcessData;->startActivity:Z

    .line 76
    return-void
.end method

.method public startActivity()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lmiui/process/PreloadProcessData;->startActivity:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lmiui/process/PreloadProcessData;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-boolean v0, p0, Lmiui/process/PreloadProcessData;->startActivity:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 61
    iget-object v0, p0, Lmiui/process/PreloadProcessData;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 58
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
