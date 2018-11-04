.class public Landroid/app/IActivityManager$ContentProviderHolder;
.super Ljava/lang/Object;
.source "IActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentProviderHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IActivityManager$ContentProviderHolder$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/IActivityManager$ContentProviderHolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public connection:Landroid/os/IBinder;

.field public final info:Landroid/content/pm/ProviderInfo;

.field public noReleaseNeeded:Z

.field public provider:Landroid/content/IContentProvider;

.field public waitProcessStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 749
    new-instance v0, Landroid/app/IActivityManager$ContentProviderHolder$1;

    invoke-direct {v0}, Landroid/app/IActivityManager$ContentProviderHolder$1;-><init>()V

    .line 748
    sput-object v0, Landroid/app/IActivityManager$ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 709
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ProviderInfo;)V
    .locals 1
    .param p1, "_info"    # Landroid/content/pm/ProviderInfo;

    .prologue
    .line 717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 715
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/IActivityManager$ContentProviderHolder;->waitProcessStart:Z

    .line 718
    iput-object p1, p0, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    .line 717
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 715
    iput-boolean v3, p0, Landroid/app/IActivityManager$ContentProviderHolder;->waitProcessStart:Z

    .line 764
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    .line 765
    .local v0, "haveProviderInfo":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 766
    sget-object v1, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ProviderInfo;

    iput-object v1, p0, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    .line 772
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 771
    invoke-static {v1}, Landroid/content/ContentProviderNative;->asInterface(Landroid/os/IBinder;)Landroid/content/IContentProvider;

    move-result-object v1

    iput-object v1, p0, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    .line 773
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    .line 774
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Landroid/app/IActivityManager$ContentProviderHolder;->noReleaseNeeded:Z

    .line 776
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    :goto_3
    iput-boolean v2, p0, Landroid/app/IActivityManager$ContentProviderHolder;->waitProcessStart:Z

    .line 761
    return-void

    .end local v0    # "haveProviderInfo":Z
    :cond_0
    move v0, v3

    .line 764
    goto :goto_0

    .line 768
    .restart local v0    # "haveProviderInfo":Z
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    goto :goto_1

    :cond_2
    move v1, v3

    .line 774
    goto :goto_2

    :cond_3
    move v2, v3

    .line 776
    goto :goto_3
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/IActivityManager$ContentProviderHolder;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/app/IActivityManager$ContentProviderHolder;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 723
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 730
    iget-object v0, p0, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    if-eqz v0, :cond_0

    .line 731
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 732
    iget-object v0, p0, Landroid/app/IActivityManager$ContentProviderHolder;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 737
    :goto_0
    iget-object v0, p0, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    if-eqz v0, :cond_1

    .line 738
    iget-object v0, p0, Landroid/app/IActivityManager$ContentProviderHolder;->provider:Landroid/content/IContentProvider;

    invoke-interface {v0}, Landroid/content/IContentProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 742
    :goto_1
    iget-object v0, p0, Landroid/app/IActivityManager$ContentProviderHolder;->connection:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 743
    iget-boolean v0, p0, Landroid/app/IActivityManager$ContentProviderHolder;->noReleaseNeeded:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 745
    iget-boolean v0, p0, Landroid/app/IActivityManager$ContentProviderHolder;->waitProcessStart:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 727
    return-void

    .line 734
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 740
    :cond_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_1

    :cond_2
    move v0, v2

    .line 743
    goto :goto_2

    :cond_3
    move v1, v2

    .line 745
    goto :goto_3
.end method
