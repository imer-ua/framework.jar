.class public Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
.super Ljava/lang/Object;
.source "MiuiSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings$SettingsCloudData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CloudData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/MiuiSettings$SettingsCloudData$CloudData$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private data:Ljava/lang/String;

.field private json:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5951
    new-instance v0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData$1;

    invoke-direct {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData$1;-><init>()V

    sput-object v0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5848
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 5852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5853
    iput-object p1, p0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->data:Ljava/lang/String;

    .line 5852
    return-void
.end method

.method private hasKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 5885
    invoke-direct {p0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->initJson()V

    .line 5886
    iget-object v0, p0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private initJson()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 5879
    iget-object v0, p0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 5880
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->data:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json:Lorg/json/JSONObject;

    .line 5878
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 5944
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5863
    if-ne p1, p0, :cond_0

    .line 5864
    return v1

    .line 5866
    :cond_0
    instance-of v3, p1, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    if-nez v3, :cond_1

    .line 5867
    return v2

    :cond_1
    move-object v0, p1

    .line 5869
    nop

    nop

    .line 5870
    .local v0, "cloudData":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    iget-object v3, p0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->data:Ljava/lang/String;

    iget-object v4, v0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->data:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v1, p0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->data:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->data:Ljava/lang/String;

    iget-object v2, v0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->data:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_2
    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defVal"    # Z

    .prologue
    .line 5923
    :try_start_0
    invoke-direct {p0, p1}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5924
    iget-object v1, p0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 5926
    :catch_0
    move-exception v0

    .line 5927
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 5929
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return p2
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defVal"    # I

    .prologue
    .line 5901
    :try_start_0
    invoke-direct {p0, p1}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5902
    iget-object v1, p0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 5904
    :catch_0
    move-exception v0

    .line 5905
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 5907
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return p2
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defVal"    # J

    .prologue
    .line 5912
    :try_start_0
    invoke-direct {p0, p1}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5913
    iget-object v1, p0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 5915
    :catch_0
    move-exception v0

    .line 5916
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 5918
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-wide p2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defVal"    # Ljava/lang/String;

    .prologue
    .line 5934
    :try_start_0
    invoke-direct {p0, p1}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5935
    iget-object v1, p0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 5937
    :catch_0
    move-exception v0

    .line 5938
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 5940
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-object p2
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 5875
    iget-object v0, p0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->data:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->data:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public json()Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 5891
    :try_start_0
    invoke-direct {p0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->initJson()V

    .line 5892
    iget-object v1, p0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 5893
    :catch_0
    move-exception v0

    .line 5894
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 5895
    const/4 v1, 0x0

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5858
    iget-object v0, p0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->data:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 5948
    iget-object v0, p0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->data:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5947
    return-void
.end method
