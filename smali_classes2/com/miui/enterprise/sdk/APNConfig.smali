.class public Lcom/miui/enterprise/sdk/APNConfig;
.super Ljava/lang/Object;
.source "APNConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/enterprise/sdk/APNConfig$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/enterprise/sdk/APNConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mApn:Ljava/lang/String;

.field public mAuthType:I

.field public mBearer:I

.field public mCarrier_enabled:I

.field public mCurrent:I

.field public mDialNumber:Ljava/lang/String;

.field public mMcc:Ljava/lang/String;

.field public mMmsc:Ljava/lang/String;

.field public mMmsport:Ljava/lang/String;

.field public mMmsproxy:Ljava/lang/String;

.field public mMnc:Ljava/lang/String;

.field public mMvno_match_data:Ljava/lang/String;

.field public mMvno_type:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mNumeric:Ljava/lang/String;

.field public mPassword:Ljava/lang/String;

.field public mPort:Ljava/lang/String;

.field public mProtocol:Ljava/lang/String;

.field public mProxy:Ljava/lang/String;

.field public mRoaming_protocol:Ljava/lang/String;

.field public mServer:Ljava/lang/String;

.field public mSub_id:Ljava/lang/String;

.field public mType:Ljava/lang/String;

.field public mUser:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcom/miui/enterprise/sdk/APNConfig$1;

    invoke-direct {v0}, Lcom/miui/enterprise/sdk/APNConfig$1;-><init>()V

    .line 126
    sput-object v0, Lcom/miui/enterprise/sdk/APNConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mAuthType:I

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mBearer:I

    .line 21
    iput v2, p0, Lcom/miui/enterprise/sdk/APNConfig;->mCarrier_enabled:I

    .line 22
    iput v2, p0, Lcom/miui/enterprise/sdk/APNConfig;->mCurrent:I

    .line 23
    iput-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMcc:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsc:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsport:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsproxy:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMnc:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_match_data:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_type:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mNumeric:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mPort:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mProtocol:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mProxy:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mRoaming_protocol:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mServer:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mSub_id:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mType:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mAuthType:I

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mBearer:I

    .line 21
    iput v2, p0, Lcom/miui/enterprise/sdk/APNConfig;->mCarrier_enabled:I

    .line 22
    iput v2, p0, Lcom/miui/enterprise/sdk/APNConfig;->mCurrent:I

    .line 23
    iput-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMcc:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsc:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsport:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsproxy:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMnc:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_match_data:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_type:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mNumeric:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mPort:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mProtocol:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mProxy:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mRoaming_protocol:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mServer:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mSub_id:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mType:Ljava/lang/String;

    .line 41
    invoke-virtual {p0, p1}, Lcom/miui/enterprise/sdk/APNConfig;->readFromParcel(Landroid/os/Parcel;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "apn"    # Ljava/lang/String;
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "authType"    # I
    .param p6, "dialNumber"    # Ljava/lang/String;
    .param p7, "bearer"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mAuthType:I

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mBearer:I

    .line 21
    iput v2, p0, Lcom/miui/enterprise/sdk/APNConfig;->mCarrier_enabled:I

    .line 22
    iput v2, p0, Lcom/miui/enterprise/sdk/APNConfig;->mCurrent:I

    .line 23
    iput-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMcc:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsc:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsport:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsproxy:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMnc:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_match_data:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_type:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mNumeric:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mPort:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mProtocol:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mProxy:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mRoaming_protocol:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mServer:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mSub_id:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mType:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mName:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/miui/enterprise/sdk/APNConfig;->mApn:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/miui/enterprise/sdk/APNConfig;->mUser:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcom/miui/enterprise/sdk/APNConfig;->mPassword:Ljava/lang/String;

    .line 54
    iput p5, p0, Lcom/miui/enterprise/sdk/APNConfig;->mAuthType:I

    .line 55
    iput-object p6, p0, Lcom/miui/enterprise/sdk/APNConfig;->mDialNumber:Ljava/lang/String;

    .line 56
    iput p7, p0, Lcom/miui/enterprise/sdk/APNConfig;->mBearer:I

    .line 49
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public isValidate()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 60
    iget-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mApn:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mUser:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mPassword:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mName:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mApn:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mUser:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mPassword:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mAuthType:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mDialNumber:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mBearer:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mCarrier_enabled:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mCurrent:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMcc:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsc:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsport:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsproxy:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMnc:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_match_data:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_type:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mNumeric:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mPort:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mProtocol:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mProxy:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mRoaming_protocol:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mServer:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mSub_id:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mType:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "APNConfig{mName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mName:Ljava/lang/String;

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 143
    const-string/jumbo v1, ", mApn=\'"

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mApn:Ljava/lang/String;

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 144
    const-string/jumbo v1, ", mUser=\'"

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mUser:Ljava/lang/String;

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 145
    const-string/jumbo v1, ", mPassword=\'"

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mPassword:Ljava/lang/String;

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 146
    const-string/jumbo v1, ", mAuthType="

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 146
    iget v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mAuthType:I

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 147
    const-string/jumbo v1, ", mDialNumber=\'"

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mDialNumber:Ljava/lang/String;

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 148
    const-string/jumbo v1, ", mBearer="

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 148
    iget v1, p0, Lcom/miui/enterprise/sdk/APNConfig;->mBearer:I

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 149
    const/16 v1, 0x7d

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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
    .line 71
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mApn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mUser:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mAuthType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mDialNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mBearer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mCarrier_enabled:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mCurrent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMcc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsport:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMmsproxy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMnc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_match_data:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mMvno_type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mPort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mProtocol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mProxy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mRoaming_protocol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mServer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mSub_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/miui/enterprise/sdk/APNConfig;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    return-void
.end method
