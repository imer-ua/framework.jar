.class public Lcom/miui/translationservice/provider/TranslationResult$Part;
.super Ljava/lang/Object;
.source "TranslationResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/translationservice/provider/TranslationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Part"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/translationservice/provider/TranslationResult$Part$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/translationservice/provider/TranslationResult$Part;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mMeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPart:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 259
    new-instance v0, Lcom/miui/translationservice/provider/TranslationResult$Part$1;

    invoke-direct {v0}, Lcom/miui/translationservice/provider/TranslationResult$Part$1;-><init>()V

    sput-object v0, Lcom/miui/translationservice/provider/TranslationResult$Part;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 217
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/translationservice/provider/TranslationResult$Part;->setPart(Ljava/lang/String;)V

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v0, "means":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v1, Lcom/miui/translationservice/provider/TranslationResult$Part;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 225
    invoke-virtual {p0, v0}, Lcom/miui/translationservice/provider/TranslationResult$Part;->setMeans(Ljava/util/List;)V

    .line 221
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/miui/translationservice/provider/TranslationResult$Part;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/miui/translationservice/provider/TranslationResult$Part;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public getMeans()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult$Part;->mMeans:Ljava/util/List;

    return-object v0
.end method

.method public getPart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult$Part;->mPart:Ljava/lang/String;

    return-object v0
.end method

.method public setMeans(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, "means":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/miui/translationservice/provider/TranslationResult$Part;->mMeans:Ljava/util/List;

    .line 240
    return-void
.end method

.method public setPart(Ljava/lang/String;)V
    .locals 0
    .param p1, "part"    # Ljava/lang/String;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/miui/translationservice/provider/TranslationResult$Part;->mPart:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 255
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult$Part;->mPart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult$Part;->mMeans:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 254
    return-void
.end method
