.class public Lcom/miui/translationservice/provider/TranslationResult$Phrase;
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
    name = "Phrase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/translationservice/provider/TranslationResult$Phrase$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/translationservice/provider/TranslationResult$Phrase;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mExplains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhrase:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 305
    new-instance v0, Lcom/miui/translationservice/provider/TranslationResult$Phrase$1;

    invoke-direct {v0}, Lcom/miui/translationservice/provider/TranslationResult$Phrase$1;-><init>()V

    sput-object v0, Lcom/miui/translationservice/provider/TranslationResult$Phrase;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 273
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/translationservice/provider/TranslationResult$Phrase;->setPhrase(Ljava/lang/String;)V

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v0, "explains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v1, Lcom/miui/translationservice/provider/TranslationResult$Phrase;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 282
    invoke-virtual {p0, v0}, Lcom/miui/translationservice/provider/TranslationResult$Phrase;->setExplains(Ljava/util/List;)V

    .line 278
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/miui/translationservice/provider/TranslationResult$Phrase;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/miui/translationservice/provider/TranslationResult$Phrase;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x0

    return v0
.end method

.method public getExplains()Ljava/util/List;
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
    .line 302
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult$Phrase;->mExplains:Ljava/util/List;

    return-object v0
.end method

.method public getPhrase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult$Phrase;->mPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public setExplains(Ljava/util/List;)V
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
    .line 298
    .local p1, "explains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/miui/translationservice/provider/TranslationResult$Phrase;->mExplains:Ljava/util/List;

    .line 297
    return-void
.end method

.method public setPhrase(Ljava/lang/String;)V
    .locals 0
    .param p1, "phrase"    # Ljava/lang/String;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/miui/translationservice/provider/TranslationResult$Phrase;->mPhrase:Ljava/lang/String;

    .line 287
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 324
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult$Phrase;->mPhrase:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult$Phrase;->mExplains:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 323
    return-void
.end method
