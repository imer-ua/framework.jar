.class public Lcom/miui/enterprise/signature/EnterpriseCer;
.super Ljava/lang/Object;
.source "EnterpriseCer.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/enterprise/signature/EnterpriseCer$1;
    }
.end annotation


# static fields
.field public static final ACTION_ENTERPRISE_CERT_UPDATE:Ljava/lang/String; = "com.miui.enterprise.ACTION_CERT_UPDATE"

.field public static final CERT_FILE:Ljava/lang/String; = "/data/system/entcert"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/enterprise/signature/EnterpriseCer;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_CERT:Ljava/lang/String; = "extra_ent_cert"

.field public static final PERMISSION_ACTIVATE_ENTERPRISE_MODE:Ljava/lang/String; = "com.miui.enterprise.permission.ACTIVE_ENTERPRISE_MODE"

.field static final sDateformat:Ljava/text/DateFormat;


# instance fields
.field public agencyCode:Ljava/lang/String;

.field public apkHash:Ljava/lang/String;

.field public deviceIds:[Ljava/lang/String;

.field public licenceCode:Ljava/lang/String;

.field public permissions:[Ljava/lang/String;

.field signature:Ljava/lang/String;

.field public validFrom:J

.field public validTo:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/enterprise/signature/EnterpriseCer;->sDateformat:Ljava/text/DateFormat;

    .line 157
    new-instance v0, Lcom/miui/enterprise/signature/EnterpriseCer$1;

    invoke-direct {v0}, Lcom/miui/enterprise/signature/EnterpriseCer$1;-><init>()V

    .line 156
    sput-object v0, Lcom/miui/enterprise/signature/EnterpriseCer;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->agencyCode:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->licenceCode:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->apkHash:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->signature:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->agencyCode:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->licenceCode:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->apkHash:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->signature:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->agencyCode:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->licenceCode:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->permissions:[Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->deviceIds:[Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->validFrom:J

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->validTo:J

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->apkHash:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->signature:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 9
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string/jumbo v5, ""

    iput-object v5, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->agencyCode:Ljava/lang/String;

    .line 25
    const-string/jumbo v5, ""

    iput-object v5, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->licenceCode:Ljava/lang/String;

    .line 26
    const-string/jumbo v5, ""

    iput-object v5, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->apkHash:Ljava/lang/String;

    .line 31
    const-string/jumbo v5, ""

    iput-object v5, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->signature:Ljava/lang/String;

    .line 69
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 71
    .local v4, "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_b

    .line 72
    const-string/jumbo v5, "AgencyCode"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 73
    const-string/jumbo v5, "AgencyCode:"

    const-string/jumbo v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->agencyCode:Ljava/lang/String;

    .line 75
    :cond_1
    const-string/jumbo v5, "LicenceCode"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 76
    const-string/jumbo v5, "LicenceCode:"

    const-string/jumbo v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->licenceCode:Ljava/lang/String;

    .line 78
    :cond_2
    const-string/jumbo v5, "Permissions"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 79
    const-string/jumbo v5, "Permissions:"

    const-string/jumbo v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "permStr":Ljava/lang/String;
    const-string/jumbo v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "*"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 81
    :cond_3
    iput-object v8, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->permissions:[Ljava/lang/String;

    .line 86
    .end local v3    # "permStr":Ljava/lang/String;
    :cond_4
    :goto_1
    const-string/jumbo v5, "DeviceIds"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 87
    const-string/jumbo v5, "DeviceIds:"

    const-string/jumbo v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "devicesIdStr":Ljava/lang/String;
    const-string/jumbo v5, "*"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 89
    iput-object v8, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->deviceIds:[Ljava/lang/String;

    .line 94
    .end local v0    # "devicesIdStr":Ljava/lang/String;
    :cond_5
    :goto_2
    const-string/jumbo v5, "ValidFrom"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 96
    :try_start_0
    sget-object v5, Lcom/miui/enterprise/signature/EnterpriseCer;->sDateformat:Ljava/text/DateFormat;

    const-string/jumbo v6, "ValidFrom:"

    const-string/jumbo v7, ""

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->validFrom:J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_6
    :goto_3
    const-string/jumbo v5, "ValidTo"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 103
    :try_start_1
    sget-object v5, Lcom/miui/enterprise/signature/EnterpriseCer;->sDateformat:Ljava/text/DateFormat;

    const-string/jumbo v6, "ValidTo:"

    const-string/jumbo v7, ""

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->validTo:J
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 108
    :cond_7
    :goto_4
    const-string/jumbo v5, "ApkHash"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 109
    const-string/jumbo v5, "ApkHash:"

    const-string/jumbo v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->apkHash:Ljava/lang/String;

    .line 111
    :cond_8
    const-string/jumbo v5, "Signature"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 112
    const-string/jumbo v5, "Signature:"

    const-string/jumbo v6, ""

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->signature:Ljava/lang/String;

    goto/16 :goto_0

    .line 83
    .restart local v3    # "permStr":Ljava/lang/String;
    :cond_9
    const-string/jumbo v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->permissions:[Ljava/lang/String;

    goto/16 :goto_1

    .line 91
    .end local v3    # "permStr":Ljava/lang/String;
    .restart local v0    # "devicesIdStr":Ljava/lang/String;
    :cond_a
    const-string/jumbo v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->deviceIds:[Ljava/lang/String;

    goto :goto_2

    .line 97
    .end local v0    # "devicesIdStr":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 104
    .end local v1    # "e":Ljava/text/ParseException;
    :catch_1
    move-exception v1

    .line 105
    .restart local v1    # "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 68
    .end local v1    # "e":Ljava/text/ParseException;
    :cond_b
    return-void
.end method

.method private printArray([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "array"    # [Ljava/lang/String;

    .prologue
    .line 34
    if-nez p1, :cond_0

    .line 35
    const-string/jumbo v2, ""

    return-object v2

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, p1, v2

    .line 39
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 41
    .end local v1    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public getUnSignedRaw()Ljava/lang/String;
    .locals 6

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AgencyCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->agencyCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 119
    const-string/jumbo v1, "LicenceCode:"

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->licenceCode:Ljava/lang/String;

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 119
    const-string/jumbo v1, "\r\n"

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 120
    const-string/jumbo v1, "Permissions:"

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 120
    iget-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->permissions:[Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "*"

    .line 118
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 120
    const-string/jumbo v1, "\r\n"

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 121
    const-string/jumbo v1, "DeviceIds:"

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 121
    iget-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->deviceIds:[Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, "*"

    .line 118
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 121
    const-string/jumbo v1, "\r\n"

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 122
    const-string/jumbo v1, "ValidFrom:"

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 122
    sget-object v1, Lcom/miui/enterprise/signature/EnterpriseCer;->sDateformat:Ljava/text/DateFormat;

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->validFrom:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 122
    const-string/jumbo v1, "\r\n"

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 123
    const-string/jumbo v1, "ValidTo:"

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 123
    sget-object v1, Lcom/miui/enterprise/signature/EnterpriseCer;->sDateformat:Ljava/text/DateFormat;

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->validTo:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 123
    const-string/jumbo v1, "\r\n"

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 124
    const-string/jumbo v1, "ApkHash:"

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->apkHash:Ljava/lang/String;

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 124
    const-string/jumbo v1, "\r\n"

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->permissions:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/enterprise/signature/EnterpriseCer;->printArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->deviceIds:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/enterprise/signature/EnterpriseCer;->printArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getValidFrom()Ljava/util/Date;
    .locals 4

    .prologue
    .line 46
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->validFrom:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getValidTo()Ljava/util/Date;
    .locals 4

    .prologue
    .line 50
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->validTo:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AgencyCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->agencyCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 130
    const-string/jumbo v1, "LicenceCode:"

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->licenceCode:Ljava/lang/String;

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 130
    const-string/jumbo v1, "\r\n"

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 131
    const-string/jumbo v1, "Permissions:"

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 131
    iget-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->permissions:[Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "*"

    .line 129
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 131
    const-string/jumbo v1, "\r\n"

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 132
    const-string/jumbo v1, "DeviceIds:"

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 132
    iget-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->deviceIds:[Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, "*"

    .line 129
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 132
    const-string/jumbo v1, "\r\n"

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 133
    const-string/jumbo v1, "ValidFrom:"

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 133
    sget-object v1, Lcom/miui/enterprise/signature/EnterpriseCer;->sDateformat:Ljava/text/DateFormat;

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->validFrom:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 133
    const-string/jumbo v1, "\r\n"

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 134
    const-string/jumbo v1, "ValidTo:"

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 134
    sget-object v1, Lcom/miui/enterprise/signature/EnterpriseCer;->sDateformat:Ljava/text/DateFormat;

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->validTo:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 134
    const-string/jumbo v1, "\r\n"

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 135
    const-string/jumbo v1, "ApkHash:"

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->apkHash:Ljava/lang/String;

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 135
    const-string/jumbo v1, "\r\n"

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 136
    const-string/jumbo v1, "Signature:"

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->signature:Ljava/lang/String;

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 136
    const-string/jumbo v1, "\r\n"

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->permissions:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/enterprise/signature/EnterpriseCer;->printArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->deviceIds:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/enterprise/signature/EnterpriseCer;->printArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 146
    iget-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->agencyCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->licenceCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->permissions:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->deviceIds:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 150
    iget-wide v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->validFrom:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 151
    iget-wide v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->validTo:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 152
    iget-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->apkHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->signature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    return-void
.end method
