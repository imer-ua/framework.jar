.class Lmiui/maml/elements/AdvancedSlider$EndPoint;
.super Lmiui/maml/elements/AdvancedSlider$SliderPoint;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EndPoint"
.end annotation


# static fields
.field private static final synthetic -miui-maml-elements-AdvancedSlider$StateSwitchesValues:[I = null

.field public static final TAG_NAME:Ljava/lang/String; = "EndPoint"


# instance fields
.field final synthetic $SWITCH_TABLE$miui$maml$elements$AdvancedSlider$State:[I

.field public mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

.field private mPath:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/AdvancedSlider$Position;",
            ">;"
        }
    .end annotation
.end field

.field private mPathX:Lmiui/maml/data/Expression;

.field private mPathY:Lmiui/maml/data/Expression;

.field private mRawTolerance:I

.field private mTolerance:F

.field final synthetic this$0:Lmiui/maml/elements/AdvancedSlider;


# direct methods
.method static synthetic -get0(Lmiui/maml/elements/AdvancedSlider$EndPoint;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static synthetic -getmiui-maml-elements-AdvancedSlider$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->-miui-maml-elements-AdvancedSlider$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->-miui-maml-elements-AdvancedSlider$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lmiui/maml/elements/AdvancedSlider$State;->values()[Lmiui/maml/elements/AdvancedSlider$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lmiui/maml/elements/AdvancedSlider$State;->Invalid:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lmiui/maml/elements/AdvancedSlider$State;->Normal:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lmiui/maml/elements/AdvancedSlider$State;->Pressed:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lmiui/maml/elements/AdvancedSlider$State;->Reached:Lmiui/maml/elements/AdvancedSlider$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->-miui-maml-elements-AdvancedSlider$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lmiui/maml/elements/AdvancedSlider$EndPoint;FF)Lmiui/maml/util/Utils$Point;
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->getNearestPoint(FF)Lmiui/maml/util/Utils$Point;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Lmiui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .param p1, "this$0"    # Lmiui/maml/elements/AdvancedSlider;
    .param p2, "node"    # Lorg/w3c/dom/Element;
    .param p3, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 810
    iput-object p1, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    .line 811
    const-string/jumbo v0, "EndPoint"

    invoke-direct {p0, p1, p2, p3, v0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;-><init>(Lmiui/maml/elements/AdvancedSlider;Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)V

    .line 808
    const/16 v0, 0x96

    iput v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mRawTolerance:I

    .line 812
    invoke-direct {p0, p2}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->load(Lorg/w3c/dom/Element;)V

    .line 810
    return-void
.end method

.method private getNearestPoint(FF)Lmiui/maml/util/Utils$Point;
    .locals 26
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    .line 856
    new-instance v20, Lmiui/maml/util/Utils$Point;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lmiui/maml/elements/AdvancedSlider;->-get2(Lmiui/maml/elements/AdvancedSlider;)F

    move-result v21

    sub-float v21, p1, v21

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lmiui/maml/elements/AdvancedSlider;->-get3(Lmiui/maml/elements/AdvancedSlider;)F

    move-result v21

    sub-float v21, p2, v21

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    return-object v20

    .line 859
    :cond_0
    const/4 v14, 0x0

    .line 860
    .local v14, "pos":Lmiui/maml/util/Utils$Point;
    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 861
    .local v8, "dist":D
    const/4 v10, 0x1

    .end local v14    # "pos":Lmiui/maml/util/Utils$Point;
    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v10, v0, :cond_2

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lmiui/maml/elements/AdvancedSlider;->-get2(Lmiui/maml/elements/AdvancedSlider;)F

    move-result v20

    sub-float v18, p1, v20

    .line 863
    .local v18, "x0":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lmiui/maml/elements/AdvancedSlider;->-get3(Lmiui/maml/elements/AdvancedSlider;)F

    move-result v20

    sub-float v19, p2, v20

    .line 864
    .local v19, "y0":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    add-int/lit8 v21, v10, -0x1

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lmiui/maml/elements/AdvancedSlider$Position;

    .line 865
    .local v16, "pt1":Lmiui/maml/elements/AdvancedSlider$Position;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lmiui/maml/elements/AdvancedSlider$Position;

    .line 866
    .local v17, "pt2":Lmiui/maml/elements/AdvancedSlider$Position;
    new-instance v12, Lmiui/maml/util/Utils$Point;

    invoke-virtual/range {v16 .. v16}, Lmiui/maml/elements/AdvancedSlider$Position;->getX()F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v16 .. v16}, Lmiui/maml/elements/AdvancedSlider$Position;->getY()F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v20

    move-wide/from16 v2, v22

    invoke-direct {v12, v0, v1, v2, v3}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    .line 867
    .local v12, "p1":Lmiui/maml/util/Utils$Point;
    new-instance v13, Lmiui/maml/util/Utils$Point;

    invoke-virtual/range {v17 .. v17}, Lmiui/maml/elements/AdvancedSlider$Position;->getX()F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-virtual/range {v17 .. v17}, Lmiui/maml/elements/AdvancedSlider$Position;->getY()F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v20

    move-wide/from16 v2, v22

    invoke-direct {v13, v0, v1, v2, v3}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    .line 868
    .local v13, "p2":Lmiui/maml/util/Utils$Point;
    new-instance v11, Lmiui/maml/util/Utils$Point;

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v20

    move-wide/from16 v2, v22

    invoke-direct {v11, v0, v1, v2, v3}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    .line 869
    .local v11, "p0":Lmiui/maml/util/Utils$Point;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-static {v12, v13, v11, v0}, Lmiui/maml/util/Utils;->pointProjectionOnSegment(Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Z)Lmiui/maml/util/Utils$Point;

    move-result-object v15

    .line 870
    .local v15, "pt":Lmiui/maml/util/Utils$Point;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v15, v11, v0}, Lmiui/maml/util/Utils;->Dist(Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Z)D

    move-result-wide v6

    .line 871
    .local v6, "d":D
    cmpg-double v20, v6, v8

    if-gez v20, :cond_1

    .line 872
    move-wide v8, v6

    .line 873
    move-object v14, v15

    .line 861
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 876
    .end local v6    # "d":D
    .end local v11    # "p0":Lmiui/maml/util/Utils$Point;
    .end local v12    # "p1":Lmiui/maml/util/Utils$Point;
    .end local v13    # "p2":Lmiui/maml/util/Utils$Point;
    .end local v15    # "pt":Lmiui/maml/util/Utils$Point;
    .end local v16    # "pt1":Lmiui/maml/elements/AdvancedSlider$Position;
    .end local v17    # "pt2":Lmiui/maml/elements/AdvancedSlider$Position;
    .end local v18    # "x0":F
    .end local v19    # "y0":F
    :cond_2
    return-object v14
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 0
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    .line 816
    invoke-direct {p0, p1}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->loadTask(Lorg/w3c/dom/Element;)V

    .line 817
    invoke-direct {p0, p1}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->loadPath(Lorg/w3c/dom/Element;)V

    .line 815
    return-void
.end method

.method private loadPath(Lorg/w3c/dom/Element;)V
    .locals 10
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v1, 0x0

    .line 900
    const-string/jumbo v0, "Path"

    invoke-static {p1, v0}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 901
    .local v6, "ele":Lorg/w3c/dom/Element;
    if-nez v6, :cond_0

    .line 902
    iput-object v1, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    .line 903
    return-void

    .line 905
    :cond_0
    const-string/jumbo v0, "tolerance"

    const/16 v1, 0x96

    invoke-virtual {p0, v6, v0, v1}, Lmiui/maml/elements/ScreenElement;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mRawTolerance:I

    .line 907
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    .line 908
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    .line 909
    .local v2, "vars":Lmiui/maml/data/Variables;
    const-string/jumbo v0, "x"

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPathX:Lmiui/maml/data/Expression;

    .line 910
    const-string/jumbo v0, "y"

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPathY:Lmiui/maml/data/Expression;

    .line 911
    const-string/jumbo v0, "Position"

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 912
    .local v8, "nodeList":Lorg/w3c/dom/NodeList;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 913
    invoke-interface {v8, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 914
    .local v3, "item":Lorg/w3c/dom/Element;
    iget-object v9, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    new-instance v0, Lmiui/maml/elements/AdvancedSlider$Position;

    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPathX:Lmiui/maml/data/Expression;

    iget-object v5, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPathY:Lmiui/maml/data/Expression;

    invoke-direct/range {v0 .. v5}, Lmiui/maml/elements/AdvancedSlider$Position;-><init>(Lmiui/maml/elements/AdvancedSlider;Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 912
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 898
    .end local v3    # "item":Lorg/w3c/dom/Element;
    :cond_1
    return-void
.end method

.method private loadTask(Lorg/w3c/dom/Element;)V
    .locals 6
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v5, 0x0

    .line 919
    const-string/jumbo v3, "Intent"

    invoke-static {p1, v3}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 920
    .local v1, "intentEle":Lorg/w3c/dom/Element;
    const-string/jumbo v3, "Command"

    invoke-static {p1, v3}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 921
    .local v0, "commandEle":Lorg/w3c/dom/Element;
    const-string/jumbo v3, "Trigger"

    invoke-static {p1, v3}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 922
    .local v2, "triggerEle":Lorg/w3c/dom/Element;
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    .line 923
    return-void

    .line 925
    :cond_0
    new-instance v3, Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    iget-object v4, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-direct {v3, v4, v5}, Lmiui/maml/elements/AdvancedSlider$LaunchAction;-><init>(Lmiui/maml/elements/AdvancedSlider;Lmiui/maml/elements/AdvancedSlider$LaunchAction;)V

    iput-object v3, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    .line 926
    if-eqz v1, :cond_2

    .line 927
    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    new-instance v4, Lmiui/maml/util/IntentInfo;

    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lmiui/maml/util/IntentInfo;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    iput-object v4, v3, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mIntentInfo:Lmiui/maml/util/IntentInfo;

    .line 918
    :cond_1
    :goto_0
    return-void

    .line 928
    :cond_2
    if-eqz v0, :cond_3

    .line 929
    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    iget-object v4, p0, Lmiui/maml/elements/ScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-static {v0, v4}, Lmiui/maml/ActionCommand;->create(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)Lmiui/maml/ActionCommand;

    move-result-object v4

    iput-object v4, v3, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lmiui/maml/ActionCommand;

    .line 930
    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    iget-object v3, v3, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mCommand:Lmiui/maml/ActionCommand;

    if-nez v3, :cond_1

    .line 931
    const-string/jumbo v3, "LockScreen_AdvancedSlider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invalid Command element: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 933
    :cond_3
    if-eqz v2, :cond_1

    .line 934
    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    new-instance v4, Lmiui/maml/CommandTrigger;

    iget-object v5, p0, Lmiui/maml/elements/ScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v4, v2, v5}, Lmiui/maml/CommandTrigger;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v4, v3, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->mTrigger:Lmiui/maml/CommandTrigger;

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 831
    invoke-super {p0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->finish()V

    .line 832
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    invoke-virtual {v0}, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->finish()V

    .line 830
    :cond_0
    return-void
.end method

.method public getTransformedDist(Lmiui/maml/util/Utils$Point;FF)F
    .locals 9
    .param p1, "pt"    # Lmiui/maml/util/Utils$Point;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const v8, 0x7f7fffff    # Float.MAX_VALUE

    .line 883
    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mPath:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 884
    const v3, 0x7effffff

    return v3

    .line 886
    :cond_0
    if-nez p1, :cond_1

    .line 887
    return v8

    .line 889
    :cond_1
    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-static {v3}, Lmiui/maml/elements/AdvancedSlider;->-get2(Lmiui/maml/elements/AdvancedSlider;)F

    move-result v3

    sub-float v1, p2, v3

    .line 890
    .local v1, "x0":F
    iget-object v3, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->this$0:Lmiui/maml/elements/AdvancedSlider;

    invoke-static {v3}, Lmiui/maml/elements/AdvancedSlider;->-get3(Lmiui/maml/elements/AdvancedSlider;)F

    move-result v3

    sub-float v2, p3, v3

    .line 891
    .local v2, "y0":F
    new-instance v3, Lmiui/maml/util/Utils$Point;

    float-to-double v4, v1

    float-to-double v6, v2

    invoke-direct {v3, v4, v5, v6, v7}, Lmiui/maml/util/Utils$Point;-><init>(DD)V

    const/4 v4, 0x1

    invoke-static {p1, v3, v4}, Lmiui/maml/util/Utils;->Dist(Lmiui/maml/util/Utils$Point;Lmiui/maml/util/Utils$Point;Z)D

    move-result-wide v4

    double-to-float v0, v4

    .line 892
    .local v0, "dist":F
    iget v3, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mTolerance:F

    cmpg-float v3, v0, v3

    if-gez v3, :cond_2

    .line 893
    return v0

    .line 895
    :cond_2
    return v8
.end method

.method public init()V
    .locals 2

    .prologue
    .line 822
    invoke-super {p0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->init()V

    .line 823
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    invoke-virtual {v0}, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->init()V

    .line 826
    :cond_0
    iget v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mRawTolerance:I

    int-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/ScreenElement;->scale(D)F

    move-result v0

    iput v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mTolerance:F

    .line 821
    return-void
.end method

.method protected onStateChange(Lmiui/maml/elements/AdvancedSlider$State;Lmiui/maml/elements/AdvancedSlider$State;)V
    .locals 2
    .param p1, "pre"    # Lmiui/maml/elements/AdvancedSlider$State;
    .param p2, "s"    # Lmiui/maml/elements/AdvancedSlider$State;

    .prologue
    .line 940
    sget-object v0, Lmiui/maml/elements/AdvancedSlider$State;->Invalid:Lmiui/maml/elements/AdvancedSlider$State;

    if-ne p1, v0, :cond_0

    .line 941
    return-void

    .line 944
    :cond_0
    invoke-static {}, Lmiui/maml/elements/AdvancedSlider$EndPoint;->-getmiui-maml-elements-AdvancedSlider$StateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 952
    :goto_0
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->onStateChange(Lmiui/maml/elements/AdvancedSlider$State;Lmiui/maml/elements/AdvancedSlider$State;)V

    .line 939
    return-void

    .line 946
    :pswitch_0
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v1, p0, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->mReachedSound:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->playSound(Ljava/lang/String;)I

    goto :goto_0

    .line 944
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 839
    invoke-super {p0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->pause()V

    .line 840
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    invoke-virtual {v0}, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->pause()V

    .line 838
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 847
    invoke-super {p0}, Lmiui/maml/elements/AdvancedSlider$SliderPoint;->resume()V

    .line 848
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Lmiui/maml/elements/AdvancedSlider$EndPoint;->mAction:Lmiui/maml/elements/AdvancedSlider$LaunchAction;

    invoke-virtual {v0}, Lmiui/maml/elements/AdvancedSlider$LaunchAction;->resume()V

    .line 846
    :cond_0
    return-void
.end method
