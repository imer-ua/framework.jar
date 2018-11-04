.class public Landroid/util/DisplayMetrics;
.super Ljava/lang/Object;
.source "DisplayMetrics.java"


# static fields
.field public static final DENSITY_260:I = 0x104

.field public static final DENSITY_280:I = 0x118

.field public static final DENSITY_300:I = 0x12c

.field public static final DENSITY_340:I = 0x154

.field public static final DENSITY_360:I = 0x168

.field public static final DENSITY_400:I = 0x190

.field public static final DENSITY_420:I = 0x1a4

.field public static final DENSITY_560:I = 0x230

.field public static final DENSITY_DEFAULT:I = 0xa0

.field public static final DENSITY_DEFAULT_SCALE:F = 0.00625f

.field public static DENSITY_DEVICE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DENSITY_DEVICE_STABLE:I

.field public static final DENSITY_HIGH:I = 0xf0

.field public static final DENSITY_LOW:I = 0x78

.field public static final DENSITY_MEDIUM:I = 0xa0

.field public static final DENSITY_NXHGITH:I

.field public static final DENSITY_TV:I = 0xd5

.field public static final DENSITY_XHIGH:I = 0x140

.field public static final DENSITY_XXHIGH:I = 0x1e0

.field public static final DENSITY_XXXHIGH:I = 0x280


# instance fields
.field public density:F

.field public densityDpi:I

.field public heightPixels:I

.field public noncompatDensity:F

.field public noncompatDensityDpi:I

.field public noncompatHeightPixels:I

.field public noncompatScaledDensity:F

.field public noncompatWidthPixels:I

.field public noncompatXdpi:F

.field public noncompatYdpi:F

.field public scaledDensity:F

.field public widthPixels:I

.field public xdpi:F

.field public ydpi:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    invoke-static {}, Landroid/util/MiuiDisplayMetrics;->getNxhdpiDensity()I

    move-result v0

    sput v0, Landroid/util/DisplayMetrics;->DENSITY_NXHGITH:I

    .line 177
    invoke-static {}, Landroid/util/DisplayMetrics;->getDeviceDensity()I

    move-result v0

    sput v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    .line 186
    invoke-static {}, Landroid/util/DisplayMetrics;->getDeviceDensity()I

    move-result v0

    sput v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDeviceDensity()I
    .locals 3

    .prologue
    .line 377
    const-string/jumbo v0, "qemu.sf.lcd_density"

    .line 378
    const-string/jumbo v1, "ro.sf.lcd_density"

    const/16 v2, 0xa0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 377
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public equals(Landroid/util/DisplayMetrics;)Z
    .locals 3
    .param p1, "other"    # Landroid/util/DisplayMetrics;

    .prologue
    const/4 v0, 0x0

    .line 330
    invoke-virtual {p0, p1}, Landroid/util/DisplayMetrics;->equalsPhysical(Landroid/util/DisplayMetrics;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    iget v1, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget v2, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 332
    iget v1, p0, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    iget v2, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 330
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 320
    instance-of v0, p1, Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/util/DisplayMetrics;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/util/DisplayMetrics;->equals(Landroid/util/DisplayMetrics;)Z

    move-result v0

    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equalsPhysical(Landroid/util/DisplayMetrics;)Z
    .locals 3
    .param p1, "other"    # Landroid/util/DisplayMetrics;

    .prologue
    const/4 v0, 0x0

    .line 345
    if-eqz p1, :cond_0

    .line 346
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v1, v2, :cond_0

    .line 347
    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v1, v2, :cond_0

    .line 348
    iget v1, p0, Landroid/util/DisplayMetrics;->density:F

    iget v2, p1, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 349
    iget v1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iget v2, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    if-ne v1, v2, :cond_0

    .line 350
    iget v1, p0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v2, p1, Landroid/util/DisplayMetrics;->xdpi:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 351
    iget v1, p0, Landroid/util/DisplayMetrics;->ydpi:F

    iget v2, p1, Landroid/util/DisplayMetrics;->ydpi:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 352
    iget v1, p0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iget v2, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    if-ne v1, v2, :cond_0

    .line 353
    iget v1, p0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    iget v2, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    if-ne v1, v2, :cond_0

    .line 354
    iget v1, p0, Landroid/util/DisplayMetrics;->noncompatDensity:F

    iget v2, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 355
    iget v1, p0, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    iget v2, p1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    if-ne v1, v2, :cond_0

    .line 356
    iget v1, p0, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    iget v2, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 357
    iget v1, p0, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    iget v2, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 345
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 362
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public setTo(Landroid/util/DisplayMetrics;)V
    .locals 1
    .param p1, "o"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 281
    if-ne p0, p1, :cond_0

    .line 282
    return-void

    .line 285
    :cond_0
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 286
    iget v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 287
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 288
    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 289
    iget v0, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 290
    iget v0, p1, Landroid/util/DisplayMetrics;->xdpi:F

    iput v0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 291
    iget v0, p1, Landroid/util/DisplayMetrics;->ydpi:F

    iput v0, p0, Landroid/util/DisplayMetrics;->ydpi:F

    .line 292
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 293
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 294
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatDensity:F

    .line 295
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    .line 296
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    .line 297
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    .line 298
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    .line 280
    return-void
.end method

.method public setToDefaults()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 302
    iput v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 303
    iput v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 304
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    iput v0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 305
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 306
    iget v0, p0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 307
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v0, v0

    iput v0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 308
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v0, v0

    iput v0, p0, Landroid/util/DisplayMetrics;->ydpi:F

    .line 309
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 310
    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 311
    iget v0, p0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatDensity:F

    .line 312
    iget v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    .line 313
    iget v0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    .line 314
    iget v0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    .line 315
    iget v0, p0, Landroid/util/DisplayMetrics;->ydpi:F

    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    .line 301
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DisplayMetrics{density="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 368
    const-string/jumbo v1, ", height="

    .line 367
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 368
    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 367
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 368
    const-string/jumbo v1, ", scaledDensity="

    .line 367
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 368
    iget v1, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 367
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 369
    const-string/jumbo v1, ", xdpi="

    .line 367
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 369
    iget v1, p0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 367
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 369
    const-string/jumbo v1, ", ydpi="

    .line 367
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 369
    iget v1, p0, Landroid/util/DisplayMetrics;->ydpi:F

    .line 367
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 369
    const-string/jumbo v1, "}"

    .line 367
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
