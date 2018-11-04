.class public Lmiui/contentcatcher/sdk/data/PageConfig;
.super Ljava/lang/Object;
.source "PageConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/contentcatcher/sdk/data/PageConfig$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmiui/contentcatcher/sdk/data/PageConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCatchers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/contentcatcher/sdk/data/CatcherInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFeatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/contentcatcher/sdk/data/FeatureInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lmiui/contentcatcher/sdk/data/PageConfig$1;

    invoke-direct {v0}, Lmiui/contentcatcher/sdk/data/PageConfig$1;-><init>()V

    sput-object v0, Lmiui/contentcatcher/sdk/data/PageConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mFeatures:Ljava/util/ArrayList;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mCatchers:Ljava/util/ArrayList;

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mFeatures:Ljava/util/ArrayList;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mCatchers:Ljava/util/ArrayList;

    .line 40
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mFeatures:Ljava/util/ArrayList;

    .line 41
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mCatchers:Ljava/util/ArrayList;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/contentcatcher/sdk/data/FeatureInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/contentcatcher/sdk/data/CatcherInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/contentcatcher/sdk/data/FeatureInfo;>;"
    .local p2, "catchers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/contentcatcher/sdk/data/CatcherInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mFeatures:Ljava/util/ArrayList;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mCatchers:Ljava/util/ArrayList;

    .line 19
    iput-object p1, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mFeatures:Ljava/util/ArrayList;

    .line 20
    iput-object p2, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mCatchers:Ljava/util/ArrayList;

    .line 18
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public getCatchers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/contentcatcher/sdk/data/CatcherInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mCatchers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFeatures()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/contentcatcher/sdk/data/FeatureInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mFeatures:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setCatchers(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/contentcatcher/sdk/data/CatcherInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "catchers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/contentcatcher/sdk/data/CatcherInfo;>;"
    iput-object p1, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mCatchers:Ljava/util/ArrayList;

    .line 35
    return-void
.end method

.method public setFeatures(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/contentcatcher/sdk/data/FeatureInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/contentcatcher/sdk/data/FeatureInfo;>;"
    iput-object p1, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mFeatures:Ljava/util/ArrayList;

    .line 27
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 52
    iget-object v0, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mCatchers:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 50
    return-void
.end method
