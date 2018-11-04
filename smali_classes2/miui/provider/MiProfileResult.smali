.class public Lmiui/provider/MiProfileResult;
.super Ljava/lang/Object;
.source "MiProfileResult.java"


# static fields
.field private static final MIPROFILE_DIR:Ljava/lang/String; = "/data/data/com.miui.cloudservice/files/"

.field private static final TAG:Ljava/lang/String; = "MiProfileResult"


# instance fields
.field public mJson:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mPhoto:Landroid/graphics/Bitmap;

.field public mSid:Ljava/lang/String;

.field public mThumbnail:Landroid/graphics/Bitmap;

.field public mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMiProfileFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "sourceId"    # Ljava/lang/String;
    .param p1, "fileType"    # Ljava/lang/String;

    .prologue
    .line 124
    const-string/jumbo v0, "%s-%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static normalizeNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    const-string/jumbo v2, ""

    return-object v2

    .line 147
    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v1

    .line 148
    .local v1, "pn":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "normalizedNumber":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 150
    const-string/jumbo v2, "+86"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 151
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .end local v0    # "normalizedNumber":Ljava/lang/String;
    :cond_1
    move-object v0, p0

    .line 148
    goto :goto_0

    .line 152
    .restart local v0    # "normalizedNumber":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "0086"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 153
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 156
    :cond_3
    return-object v0
.end method

.method public static queryContactMiProfile(Landroid/content/Context;Ljava/lang/String;)Lmiui/provider/MiProfileResult;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 52
    invoke-static {p1}, Lmiui/provider/MiProfileResult;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 53
    .local v8, "normalizedNumber":Ljava/lang/String;
    const/4 v6, 0x0

    .line 55
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 56
    sget-object v1, Lmiui/provider/MiProfile;->MIPROFILE_NUMBERS_URI:Landroid/net/Uri;

    .line 57
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    .line 58
    const-string/jumbo v3, "sid"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "type"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 59
    const-string/jumbo v3, "name"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const-string/jumbo v3, "json"

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 61
    const-string/jumbo v3, "number=? AND type=? AND (expireTime>=? OR expireTime<0)"

    .line 63
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    .line 64
    const/4 v5, 0x0

    aput-object v8, v4, v5

    const-string/jumbo v5, "SendCard"

    const/4 v10, 0x1

    aput-object v5, v4, v10

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x2

    aput-object v5, v4, v10

    .line 66
    const/4 v5, 0x0

    .line 55
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 67
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    new-instance v9, Lmiui/provider/MiProfileResult;

    invoke-direct {v9}, Lmiui/provider/MiProfileResult;-><init>()V

    .line 69
    .local v9, "result":Lmiui/provider/MiProfileResult;
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lmiui/provider/MiProfileResult;->mSid:Ljava/lang/String;

    .line 70
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lmiui/provider/MiProfileResult;->mType:Ljava/lang/String;

    .line 71
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lmiui/provider/MiProfileResult;->mName:Ljava/lang/String;

    .line 72
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lmiui/provider/MiProfileResult;->mJson:Ljava/lang/String;

    .line 73
    iget-object v0, v9, Lmiui/provider/MiProfileResult;->mSid:Ljava/lang/String;

    const-string/jumbo v1, "thumbnail"

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lmiui/provider/MiProfileResult;->queryMiProfilePhoto(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v9, Lmiui/provider/MiProfileResult;->mThumbnail:Landroid/graphics/Bitmap;

    .line 74
    const-string/jumbo v0, "MiProfileResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryContactMiProfile(): sid ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lmiui/provider/MiProfileResult;->mSid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    if-eqz v6, :cond_0

    .line 81
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 75
    :cond_0
    return-object v9

    .line 80
    .end local v9    # "result":Lmiui/provider/MiProfileResult;
    :cond_1
    if-eqz v6, :cond_2

    .line 81
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 84
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_0
    return-object v12

    .line 77
    :catch_0
    move-exception v7

    .line 80
    .local v7, "e":Ljava/lang/Exception;
    if-eqz v6, :cond_2

    .line 81
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 79
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 80
    if-eqz v6, :cond_3

    .line 81
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 79
    :cond_3
    throw v0
.end method

.method private static queryMiProfilePhoto(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sid"    # Ljava/lang/String;
    .param p2, "fileType"    # Ljava/lang/String;
    .param p3, "rounded"    # Z

    .prologue
    const/4 v5, 0x0

    .line 129
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/data/data/com.miui.cloudservice/files/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, p2}, Lmiui/provider/MiProfileResult;->getMiProfileFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    .local v2, "photoFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 132
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Lmiui/graphics/BitmapFactory;->decodeBitmap(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 133
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 134
    if-eqz p3, :cond_0

    invoke-static {p0, v0}, Lmiui/graphics/BitmapFactory;->createPhoto(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_0
    return-object v0

    .line 137
    :catch_0
    move-exception v1

    .line 140
    :cond_1
    return-object v5
.end method

.method public static queryPhoneMiProfile(Landroid/content/Context;Ljava/lang/String;)Lmiui/provider/MiProfileResult;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 88
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    return-object v12

    .line 91
    :cond_1
    invoke-static {p1}, Lmiui/provider/MiProfileResult;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 92
    .local v8, "normalizedNumber":Ljava/lang/String;
    const/4 v6, 0x0

    .line 94
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 95
    sget-object v1, Lmiui/provider/MiProfile;->MIPROFILE_NUMBERS_URI:Landroid/net/Uri;

    .line 96
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 97
    const-string/jumbo v3, "sid"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "name"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 99
    const-string/jumbo v3, "number=? AND type=? AND (expireTime>=? OR expireTime<0)"

    .line 101
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    .line 102
    const/4 v5, 0x0

    aput-object v8, v4, v5

    const-string/jumbo v5, "SendCard"

    const/4 v10, 0x1

    aput-object v5, v4, v10

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x2

    aput-object v5, v4, v10

    .line 104
    const/4 v5, 0x0

    .line 94
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 105
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    new-instance v9, Lmiui/provider/MiProfileResult;

    invoke-direct {v9}, Lmiui/provider/MiProfileResult;-><init>()V

    .line 107
    .local v9, "result":Lmiui/provider/MiProfileResult;
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lmiui/provider/MiProfileResult;->mSid:Ljava/lang/String;

    .line 108
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lmiui/provider/MiProfileResult;->mName:Ljava/lang/String;

    .line 109
    iget-object v0, v9, Lmiui/provider/MiProfileResult;->mSid:Ljava/lang/String;

    const-string/jumbo v1, "thumbnail"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lmiui/provider/MiProfileResult;->queryMiProfilePhoto(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v9, Lmiui/provider/MiProfileResult;->mThumbnail:Landroid/graphics/Bitmap;

    .line 110
    const-string/jumbo v0, "MiProfileResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryPhoneMiProfile(): sid ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lmiui/provider/MiProfileResult;->mSid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    if-eqz v6, :cond_2

    .line 117
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 111
    :cond_2
    return-object v9

    .line 116
    .end local v9    # "result":Lmiui/provider/MiProfileResult;
    :cond_3
    if-eqz v6, :cond_4

    .line 117
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 120
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_4
    :goto_0
    return-object v12

    .line 113
    :catch_0
    move-exception v7

    .line 116
    .local v7, "e":Ljava/lang/Exception;
    if-eqz v6, :cond_4

    .line 117
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 115
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 116
    if-eqz v6, :cond_5

    .line 117
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 115
    :cond_5
    throw v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "mSid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/provider/MiProfileResult;->mSid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string/jumbo v1, "mType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/provider/MiProfileResult;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v1, p0, Lmiui/provider/MiProfileResult;->mName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    const-string/jumbo v1, "mName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/provider/MiProfileResult;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    :cond_0
    iget-object v1, p0, Lmiui/provider/MiProfileResult;->mPhoto:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 40
    const-string/jumbo v1, "mPhoto exists; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    :cond_1
    iget-object v1, p0, Lmiui/provider/MiProfileResult;->mThumbnail:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 43
    const-string/jumbo v1, "mThumbnail exists; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    :cond_2
    iget-object v1, p0, Lmiui/provider/MiProfileResult;->mJson:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 46
    const-string/jumbo v1, "mJson = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/provider/MiProfileResult;->mJson:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
