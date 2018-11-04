.class public Lmiui/maml/data/WebServiceBinder$Variable;
.super Lmiui/maml/data/VariableBinder$Variable;
.source "WebServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/WebServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Variable"
.end annotation


# instance fields
.field private mCache:Z

.field private mInnerPath:Ljava/lang/String;

.field public mPath:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Lmiui/maml/data/WebServiceBinder$Variable;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cacheDir"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/data/WebServiceBinder$Variable;->hasCache(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "var"    # Lmiui/maml/data/Variables;

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    .line 131
    const-string/jumbo v0, "xpath"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder$Variable;->mPath:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder$Variable;->mPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const-string/jumbo v0, "path"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder$Variable;->mPath:Ljava/lang/String;

    .line 135
    :cond_0
    const-string/jumbo v0, "innerPath"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder$Variable;->mInnerPath:Ljava/lang/String;

    .line 136
    const-string/jumbo v0, "cache"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/data/WebServiceBinder$Variable;->mCache:Z

    .line 129
    return-void
.end method

.method private final getCacheName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmiui/maml/data/VariableBinder$TypedValue;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hasCache(Ljava/lang/String;)Z
    .locals 2
    .param p1, "cacheDir"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 189
    iget-boolean v1, p0, Lmiui/maml/data/WebServiceBinder$Variable;->mCache:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public loadCache(Ljava/lang/String;)V
    .locals 7
    .param p1, "cacheDir"    # Ljava/lang/String;

    .prologue
    .line 193
    iget v5, p0, Lmiui/maml/data/VariableBinder$TypedValue;->mType:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_0

    invoke-direct {p0, p1}, Lmiui/maml/data/WebServiceBinder$Variable;->hasCache(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 196
    const/4 v3, 0x0

    .line 197
    .local v3, "is":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 199
    .local v0, "bm":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {p0}, Lmiui/maml/data/WebServiceBinder$Variable;->getCacheName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    .end local v3    # "is":Ljava/io/InputStream;
    .local v4, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 206
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-static {v4}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    move-object v3, v4

    .line 209
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "is":Ljava/io/InputStream;
    :goto_0
    invoke-virtual {p0, v0}, Lmiui/maml/data/WebServiceBinder$Variable;->set(Ljava/lang/Object;)V

    .line 192
    return-void

    .line 194
    :cond_0
    return-void

    .line 203
    .local v0, "bm":Landroid/graphics/Bitmap;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 204
    .end local v3    # "is":Ljava/io/InputStream;
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    :goto_1
    :try_start_2
    const-string/jumbo v5, "WebServiceBinder"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 206
    invoke-static {v3}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_0

    .line 201
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 202
    .end local v3    # "is":Ljava/io/InputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    const-string/jumbo v5, "WebServiceBinder"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 206
    invoke-static {v3}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_0

    .line 205
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v5

    .line 206
    :goto_3
    invoke-static {v3}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 205
    throw v5

    .restart local v4    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "is":Ljava/io/InputStream;
    .local v3, "is":Ljava/io/InputStream;
    goto :goto_3

    .line 201
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    move-object v3, v4

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_2

    .line 203
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/lang/OutOfMemoryError;
    move-object v3, v4

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_1
.end method

.method public saveCache(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 11
    .param p1, "response"    # Ljava/io/InputStream;
    .param p2, "cacheDir"    # Ljava/lang/String;

    .prologue
    const/4 v10, -0x1

    .line 147
    invoke-direct {p0, p2}, Lmiui/maml/data/WebServiceBinder$Variable;->hasCache(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 148
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .local v2, "cacheDirFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 150
    const/16 v9, 0x1ed

    invoke-static {v2, v9, v10, v10}, Lmiui/os/FileUtils;->mkdirs(Ljava/io/File;III)Z

    .line 153
    :cond_0
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {p0}, Lmiui/maml/data/WebServiceBinder$Variable;->getCacheName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, p2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 157
    if-eqz p1, :cond_1

    .line 158
    new-instance v7, Ljava/io/FileOutputStream;

    const/4 v9, 0x0

    invoke-direct {v7, v6, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    .line 160
    .local v7, "fo":Ljava/io/FileOutputStream;
    const/high16 v0, 0x10000

    .line 161
    .local v0, "COUNT":I
    const/high16 v9, 0x10000

    :try_start_1
    new-array v1, v9, [B

    .line 162
    .local v1, "buff":[B
    const/4 v8, -0x1

    .line 163
    .local v8, "read":I
    :goto_0
    const/4 v9, 0x0

    const/high16 v10, 0x10000

    invoke-virtual {p1, v1, v9, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    if-lez v8, :cond_2

    .line 164
    const/4 v9, 0x0

    invoke-virtual {v7, v1, v9, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 166
    .end local v1    # "buff":[B
    .end local v8    # "read":I
    :catchall_0
    move-exception v9

    .line 167
    :try_start_2
    invoke-static {v7}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 166
    throw v9
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    .line 171
    .end local v0    # "COUNT":I
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "fo":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 172
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v9, "WebServiceBinder"

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 145
    .end local v2    # "cacheDirFile":Ljava/io/File;
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_1
    return-void

    .line 167
    .restart local v0    # "COUNT":I
    .restart local v1    # "buff":[B
    .restart local v2    # "cacheDirFile":Ljava/io/File;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v7    # "fo":Ljava/io/FileOutputStream;
    .restart local v8    # "read":I
    :cond_2
    :try_start_3
    invoke-static {v7}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 174
    .end local v0    # "COUNT":I
    .end local v1    # "buff":[B
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "fo":Ljava/io/FileOutputStream;
    .end local v8    # "read":I
    :catch_1
    move-exception v4

    .line 175
    .local v4, "e":Ljava/io/IOException;
    const-string/jumbo v9, "WebServiceBinder"

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 177
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v5

    .line 178
    .local v5, "e":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v9, "WebServiceBinder"

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public set(Ljava/lang/Object;)V
    .locals 17
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 214
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/data/VariableBinder$TypedValue;->isArray()Z

    move-result v16

    if-eqz v16, :cond_6

    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/json/JSONArray;

    move/from16 v16, v0

    if-eqz v16, :cond_6

    move-object/from16 v2, p1

    .line 215
    check-cast v2, Lorg/json/JSONArray;

    .line 216
    .local v2, "arr":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/VariableBinder$Variable;->mVar:Lmiui/maml/data/IndexedVariable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lmiui/maml/data/IndexedVariable;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v15

    .line 217
    .local v15, "variables":Lmiui/maml/data/Variables;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/VariableBinder$Variable;->mVar:Lmiui/maml/data/IndexedVariable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lmiui/maml/data/IndexedVariable;->getIndex()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 218
    .local v12, "obj":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 219
    .local v3, "count":I
    const/4 v9, 0x0

    .line 220
    .local v9, "isNumberArr":Z
    instance-of v0, v12, [D

    move/from16 v16, v0

    if-eqz v16, :cond_3

    .line 221
    check-cast v12, [D

    .end local v12    # "obj":Ljava/lang/Object;
    array-length v3, v12

    .line 222
    const/4 v9, 0x1

    .line 227
    :cond_0
    :goto_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v3, :cond_7

    .line 228
    const/4 v13, 0x0

    .line 230
    .local v13, "object":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v16

    if-ge v8, v0, :cond_1

    .line 231
    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v13

    .line 234
    .end local v13    # "object":Ljava/lang/Object;
    :cond_1
    :goto_2
    const-wide/16 v4, 0x0

    .line 235
    .local v4, "d":D
    const/4 v14, 0x0

    .line 236
    .local v14, "s":Ljava/lang/String;
    if-eqz v13, :cond_2

    .line 237
    sget-object v16, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    move-object/from16 v0, v16

    if-eq v13, v0, :cond_4

    instance-of v0, v13, Lorg/json/JSONObject;

    move/from16 v16, v0

    if-eqz v16, :cond_4

    .line 238
    new-instance v10, Lmiui/maml/util/JSONPath;

    check-cast v13, Lorg/json/JSONObject;

    invoke-direct {v10, v13}, Lmiui/maml/util/JSONPath;-><init>(Lorg/json/JSONObject;)V

    .line 239
    .local v10, "jpath":Lmiui/maml/util/JSONPath;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/WebServiceBinder$Variable;->mInnerPath:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lmiui/maml/util/JSONPath;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 240
    .local v11, "o":Ljava/lang/Object;
    instance-of v0, v11, Ljava/lang/String;

    move/from16 v16, v0

    if-eqz v16, :cond_2

    move-object v14, v11

    .line 241
    check-cast v14, Ljava/lang/String;

    .line 242
    .local v14, "s":Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 244
    :try_start_1
    invoke-static {v14}, Lmiui/maml/util/Utils;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v4

    .line 260
    .end local v10    # "jpath":Lmiui/maml/util/JSONPath;
    .end local v11    # "o":Ljava/lang/Object;
    .end local v14    # "s":Ljava/lang/String;
    :cond_2
    :goto_3
    if-eqz v9, :cond_5

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/VariableBinder$Variable;->mVar:Lmiui/maml/data/IndexedVariable;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v4, v5}, Lmiui/maml/data/IndexedVariable;->setArr(ID)Z

    .line 227
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 223
    .end local v4    # "d":D
    .end local v8    # "i":I
    .restart local v12    # "obj":Ljava/lang/Object;
    :cond_3
    instance-of v0, v12, [Ljava/lang/String;

    move/from16 v16, v0

    if-eqz v16, :cond_0

    .line 224
    check-cast v12, [Ljava/lang/String;

    .end local v12    # "obj":Ljava/lang/Object;
    array-length v3, v12

    goto :goto_0

    .line 245
    .restart local v4    # "d":D
    .restart local v8    # "i":I
    .restart local v10    # "jpath":Lmiui/maml/util/JSONPath;
    .restart local v11    # "o":Ljava/lang/Object;
    .restart local v14    # "s":Ljava/lang/String;
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/NumberFormatException;
    goto :goto_3

    .line 249
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .end local v10    # "jpath":Lmiui/maml/util/JSONPath;
    .end local v11    # "o":Ljava/lang/Object;
    .local v14, "s":Ljava/lang/String;
    :cond_4
    instance-of v0, v13, Ljava/lang/String;

    move/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v14, p1

    .line 250
    check-cast v14, Ljava/lang/String;

    .line 251
    .local v14, "s":Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 253
    :try_start_2
    invoke-static {v14}, Lmiui/maml/util/Utils;->parseDouble(Ljava/lang/String;)D
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v4

    goto :goto_3

    .line 254
    :catch_1
    move-exception v6

    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    goto :goto_3

    .line 263
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .end local v14    # "s":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/VariableBinder$Variable;->mVar:Lmiui/maml/data/IndexedVariable;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v14}, Lmiui/maml/data/IndexedVariable;->setArr(ILjava/lang/Object;)Z

    goto :goto_4

    .line 267
    .end local v2    # "arr":Lorg/json/JSONArray;
    .end local v3    # "count":I
    .end local v4    # "d":D
    .end local v8    # "i":I
    .end local v9    # "isNumberArr":Z
    .end local v15    # "variables":Lmiui/maml/data/Variables;
    :cond_6
    invoke-super/range {p0 .. p1}, Lmiui/maml/data/VariableBinder$Variable;->set(Ljava/lang/Object;)V

    .line 213
    :cond_7
    return-void

    .line 232
    .restart local v2    # "arr":Lorg/json/JSONArray;
    .restart local v3    # "count":I
    .restart local v8    # "i":I
    .restart local v9    # "isNumberArr":Z
    .restart local v13    # "object":Ljava/lang/Object;
    .restart local v15    # "variables":Lmiui/maml/data/Variables;
    :catch_2
    move-exception v7

    .local v7, "e":Lorg/json/JSONException;
    goto :goto_2
.end method
