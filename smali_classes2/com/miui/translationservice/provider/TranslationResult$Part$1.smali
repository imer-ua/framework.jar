.class final Lcom/miui/translationservice/provider/TranslationResult$Part$1;
.super Ljava/lang/Object;
.source "TranslationResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/translationservice/provider/TranslationResult$Part;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/miui/translationservice/provider/TranslationResult$Part;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/translationservice/provider/TranslationResult$Part;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 268
    new-instance v0, Lcom/miui/translationservice/provider/TranslationResult$Part;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/miui/translationservice/provider/TranslationResult$Part;-><init>(Landroid/os/Parcel;Lcom/miui/translationservice/provider/TranslationResult$Part;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Lcom/miui/translationservice/provider/TranslationResult$Part$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/translationservice/provider/TranslationResult$Part;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/miui/translationservice/provider/TranslationResult$Part;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 263
    new-array v0, p1, [Lcom/miui/translationservice/provider/TranslationResult$Part;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 262
    invoke-virtual {p0, p1}, Lcom/miui/translationservice/provider/TranslationResult$Part$1;->newArray(I)[Lcom/miui/translationservice/provider/TranslationResult$Part;

    move-result-object v0

    return-object v0
.end method
