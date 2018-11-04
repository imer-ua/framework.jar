.class public final Landroid/os/statistics/E2EScenario;
.super Ljava/lang/Object;
.source "E2EScenario.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/E2EScenario$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/statistics/E2EScenario;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_CATEGORY:Ljava/lang/String; = "default"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public category:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public namespace:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    new-instance v0, Landroid/os/statistics/E2EScenario$1;

    invoke-direct {v0}, Landroid/os/statistics/E2EScenario$1;-><init>()V

    .line 118
    sput-object v0, Landroid/os/statistics/E2EScenario;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 12
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/statistics/E2EScenario;->namespace:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/statistics/E2EScenario;->category:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/statistics/E2EScenario;->name:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "_namespace":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "_category":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "_name":Ljava/lang/String;
    if-nez v2, :cond_0

    const-string/jumbo v2, ""

    .end local v2    # "_namespace":Ljava/lang/String;
    :cond_0
    iput-object v2, p0, Landroid/os/statistics/E2EScenario;->namespace:Ljava/lang/String;

    .line 52
    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    .end local v0    # "_category":Ljava/lang/String;
    :cond_1
    iput-object v0, p0, Landroid/os/statistics/E2EScenario;->category:Ljava/lang/String;

    .line 53
    if-nez v1, :cond_2

    const-string/jumbo v1, ""

    .end local v1    # "_name":Ljava/lang/String;
    :cond_2
    iput-object v1, p0, Landroid/os/statistics/E2EScenario;->name:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    .end local p1    # "namespace":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Landroid/os/statistics/E2EScenario;->namespace:Ljava/lang/String;

    .line 40
    if-nez p2, :cond_1

    const-string/jumbo p2, ""

    .end local p2    # "category":Ljava/lang/String;
    :cond_1
    iput-object p2, p0, Landroid/os/statistics/E2EScenario;->category:Ljava/lang/String;

    .line 41
    if-nez p3, :cond_2

    const-string/jumbo p3, ""

    .end local p3    # "name":Ljava/lang/String;
    :cond_2
    iput-object p3, p0, Landroid/os/statistics/E2EScenario;->name:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 70
    if-eqz p1, :cond_1

    instance-of v2, p1, Landroid/os/statistics/E2EScenario;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 73
    nop

    nop

    .line 74
    .local v0, "other":Landroid/os/statistics/E2EScenario;
    iget-object v2, p0, Landroid/os/statistics/E2EScenario;->namespace:Ljava/lang/String;

    iget-object v3, v0, Landroid/os/statistics/E2EScenario;->namespace:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    iget-object v2, p0, Landroid/os/statistics/E2EScenario;->category:Ljava/lang/String;

    iget-object v3, v0, Landroid/os/statistics/E2EScenario;->category:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 74
    if-eqz v2, :cond_0

    .line 76
    iget-object v1, p0, Landroid/os/statistics/E2EScenario;->name:Ljava/lang/String;

    iget-object v2, v0, Landroid/os/statistics/E2EScenario;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 74
    :cond_0
    return v1

    .line 71
    .end local v0    # "other":Landroid/os/statistics/E2EScenario;
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Landroid/os/statistics/E2EScenario;->namespace:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/os/statistics/E2EScenario;->category:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/os/statistics/E2EScenario;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Landroid/os/statistics/E2EScenario;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public normalize(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Landroid/os/statistics/E2EScenario;->namespace:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p1, "android"

    .end local p1    # "packageName":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Landroid/os/statistics/E2EScenario;->namespace:Ljava/lang/String;

    .line 63
    :cond_1
    iget-object v0, p0, Landroid/os/statistics/E2EScenario;->category:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    const-string/jumbo v0, "default"

    iput-object v0, p0, Landroid/os/statistics/E2EScenario;->category:Ljava/lang/String;

    .line 59
    :cond_2
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 107
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 109
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v2, "namespace"

    iget-object v3, p0, Landroid/os/statistics/E2EScenario;->namespace:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    const-string/jumbo v2, "category"

    iget-object v3, p0, Landroid/os/statistics/E2EScenario;->category:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    const-string/jumbo v2, "name"

    iget-object v3, p0, Landroid/os/statistics/E2EScenario;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-object v1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 98
    iget-object v0, p0, Landroid/os/statistics/E2EScenario;->namespace:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Landroid/os/statistics/E2EScenario;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Landroid/os/statistics/E2EScenario;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    return-void
.end method
