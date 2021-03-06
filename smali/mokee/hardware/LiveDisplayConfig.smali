.class public Lmokee/hardware/LiveDisplayConfig;
.super Ljava/lang/Object;
.source "LiveDisplayConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmokee/hardware/LiveDisplayConfig$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmokee/hardware/LiveDisplayConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAllModes:Ljava/util/BitSet;

.field private final mCapabilities:Ljava/util/BitSet;

.field private final mColorBalanceRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mColorTemperatureRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mContrastRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultAutoContrast:Z

.field private final mDefaultAutoOutdoorMode:Z

.field private final mDefaultCABC:Z

.field private final mDefaultColorEnhancement:Z

.field private final mDefaultDayTemperature:I

.field private final mDefaultMode:I

.field private final mDefaultNightTemperature:I

.field private final mHueRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mIntensityRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mSaturationRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mSaturationThresholdRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 380
    new-instance v0, Lmokee/hardware/LiveDisplayConfig$1;

    invoke-direct {v0}, Lmokee/hardware/LiveDisplayConfig$1;-><init>()V

    .line 379
    sput-object v0, Lmokee/hardware/LiveDisplayConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 44
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 21
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v18, Ljava/util/BitSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/BitSet;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lmokee/hardware/LiveDisplayConfig;->mAllModes:Ljava/util/BitSet;

    .line 98
    invoke-static/range {p1 .. p1}, Lmokee/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Lmokee/os/Concierge$ParcelInfo;

    move-result-object v16

    .line 99
    .local v16, "parcelInfo":Lmokee/os/Concierge$ParcelInfo;
    invoke-virtual/range {v16 .. v16}, Lmokee/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v17

    .line 102
    .local v17, "parcelableVersion":I
    const-wide/16 v2, 0x0

    .line 103
    .local v2, "capabilities":J
    const/4 v9, 0x0

    .line 104
    .local v9, "defaultMode":I
    const/4 v8, -0x1

    .line 105
    .local v8, "defaultDayTemperature":I
    const/4 v10, -0x1

    .line 106
    .local v10, "defaultNightTemperature":I
    const/4 v4, 0x0

    .line 107
    .local v4, "defaultAutoContrast":Z
    const/4 v5, 0x0

    .line 108
    .local v5, "defaultAutoOutdoorMode":Z
    const/4 v6, 0x0

    .line 109
    .local v6, "defaultCABC":Z
    const/4 v7, 0x0

    .line 110
    .local v7, "defaultColorEnhancement":Z
    const/4 v14, 0x0

    .line 111
    .local v14, "minColorTemperature":I
    const/4 v12, 0x0

    .line 112
    .local v12, "maxColorTemperature":I
    const/4 v13, 0x0

    .line 113
    .local v13, "minColorBalance":I
    const/4 v11, 0x0

    .line 114
    .local v11, "maxColorBalance":I
    const/16 v18, 0xa

    move/from16 v0, v18

    new-array v15, v0, [F

    .line 116
    .local v15, "paRanges":[F
    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_0

    .line 117
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 118
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 119
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 120
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 121
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    const/4 v4, 0x1

    .line 122
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    const/4 v5, 0x1

    .line 123
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    const/4 v6, 0x1

    .line 124
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    const/4 v7, 0x1

    .line 125
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 126
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 127
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 128
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 129
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->readFloatArray([F)V

    .line 133
    :cond_0
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [J

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-wide v2, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/util/BitSet;->valueOf([J)Ljava/util/BitSet;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lmokee/hardware/LiveDisplayConfig;->mCapabilities:Ljava/util/BitSet;

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lmokee/hardware/LiveDisplayConfig;->mAllModes:Ljava/util/BitSet;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x4

    invoke-virtual/range {v18 .. v20}, Ljava/util/BitSet;->set(II)V

    .line 135
    move-object/from16 v0, p0

    iput v9, v0, Lmokee/hardware/LiveDisplayConfig;->mDefaultMode:I

    .line 136
    move-object/from16 v0, p0

    iput v8, v0, Lmokee/hardware/LiveDisplayConfig;->mDefaultDayTemperature:I

    .line 137
    move-object/from16 v0, p0

    iput v10, v0, Lmokee/hardware/LiveDisplayConfig;->mDefaultNightTemperature:I

    .line 138
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmokee/hardware/LiveDisplayConfig;->mDefaultAutoContrast:Z

    .line 139
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lmokee/hardware/LiveDisplayConfig;->mDefaultAutoOutdoorMode:Z

    .line 140
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lmokee/hardware/LiveDisplayConfig;->mDefaultCABC:Z

    .line 141
    move-object/from16 v0, p0

    iput-boolean v7, v0, Lmokee/hardware/LiveDisplayConfig;->mDefaultColorEnhancement:Z

    .line 142
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lmokee/hardware/LiveDisplayConfig;->mColorTemperatureRange:Landroid/util/Range;

    .line 143
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lmokee/hardware/LiveDisplayConfig;->mColorBalanceRange:Landroid/util/Range;

    .line 144
    const/16 v18, 0x0

    aget v18, v15, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const/16 v19, 0x1

    aget v19, v15, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lmokee/hardware/LiveDisplayConfig;->mHueRange:Landroid/util/Range;

    .line 145
    const/16 v18, 0x2

    aget v18, v15, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const/16 v19, 0x3

    aget v19, v15, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lmokee/hardware/LiveDisplayConfig;->mSaturationRange:Landroid/util/Range;

    .line 146
    const/16 v18, 0x4

    aget v18, v15, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const/16 v19, 0x5

    aget v19, v15, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lmokee/hardware/LiveDisplayConfig;->mIntensityRange:Landroid/util/Range;

    .line 147
    const/16 v18, 0x6

    aget v18, v15, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const/16 v19, 0x7

    aget v19, v15, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lmokee/hardware/LiveDisplayConfig;->mContrastRange:Landroid/util/Range;

    .line 148
    const/16 v18, 0x8

    aget v18, v15, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    const/16 v19, 0x9

    aget v19, v15, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lmokee/hardware/LiveDisplayConfig;->mSaturationThresholdRange:Landroid/util/Range;

    .line 151
    invoke-virtual/range {v16 .. v16}, Lmokee/os/Concierge$ParcelInfo;->complete()V

    .line 96
    return-void

    .line 121
    :cond_1
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 122
    :cond_2
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 123
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 124
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_3
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmokee/hardware/LiveDisplayConfig;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lmokee/hardware/LiveDisplayConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "capabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmokee/hardware/LiveDisplayConfig;->mCapabilities:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string/jumbo v1, " defaultMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmokee/hardware/LiveDisplayConfig;->mDefaultMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    const-string/jumbo v1, " defaultDayTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmokee/hardware/LiveDisplayConfig;->mDefaultDayTemperature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    const-string/jumbo v1, " defaultNightTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmokee/hardware/LiveDisplayConfig;->mDefaultNightTemperature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    const-string/jumbo v1, " defaultAutoOutdoorMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lmokee/hardware/LiveDisplayConfig;->mDefaultAutoOutdoorMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 162
    const-string/jumbo v1, " defaultAutoContrast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lmokee/hardware/LiveDisplayConfig;->mDefaultAutoContrast:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 163
    const-string/jumbo v1, " defaultCABC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lmokee/hardware/LiveDisplayConfig;->mDefaultCABC:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 164
    const-string/jumbo v1, " defaultColorEnhancement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lmokee/hardware/LiveDisplayConfig;->mDefaultColorEnhancement:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 165
    const-string/jumbo v1, " colorTemperatureRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmokee/hardware/LiveDisplayConfig;->mColorTemperatureRange:Landroid/util/Range;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    iget-object v1, p0, Lmokee/hardware/LiveDisplayConfig;->mCapabilities:Ljava/util/BitSet;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    const-string/jumbo v1, " colorBalanceRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmokee/hardware/LiveDisplayConfig;->mColorBalanceRange:Landroid/util/Range;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 169
    :cond_0
    iget-object v1, p0, Lmokee/hardware/LiveDisplayConfig;->mCapabilities:Ljava/util/BitSet;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    const-string/jumbo v1, " hueRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmokee/hardware/LiveDisplayConfig;->mHueRange:Landroid/util/Range;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    const-string/jumbo v1, " saturationRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmokee/hardware/LiveDisplayConfig;->mSaturationRange:Landroid/util/Range;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    const-string/jumbo v1, " intensityRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmokee/hardware/LiveDisplayConfig;->mIntensityRange:Landroid/util/Range;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    const-string/jumbo v1, " contrastRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmokee/hardware/LiveDisplayConfig;->mContrastRange:Landroid/util/Range;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    const-string/jumbo v1, " saturationThresholdRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmokee/hardware/LiveDisplayConfig;->mSaturationThresholdRange:Landroid/util/Range;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 187
    invoke-static {p1}, Lmokee/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Lmokee/os/Concierge$ParcelInfo;

    move-result-object v1

    .line 190
    .local v1, "parcelInfo":Lmokee/os/Concierge$ParcelInfo;
    iget-object v2, p0, Lmokee/hardware/LiveDisplayConfig;->mCapabilities:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->toLongArray()[J

    move-result-object v0

    .line 191
    .local v0, "caps":[J
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    aget-wide v2, v0, v5

    :goto_0
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 192
    iget v2, p0, Lmokee/hardware/LiveDisplayConfig;->mDefaultMode:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget v2, p0, Lmokee/hardware/LiveDisplayConfig;->mDefaultDayTemperature:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget v2, p0, Lmokee/hardware/LiveDisplayConfig;->mDefaultNightTemperature:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget-boolean v2, p0, Lmokee/hardware/LiveDisplayConfig;->mDefaultAutoContrast:Z

    if-eqz v2, :cond_1

    move v2, v4

    :goto_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget-boolean v2, p0, Lmokee/hardware/LiveDisplayConfig;->mDefaultAutoOutdoorMode:Z

    if-eqz v2, :cond_2

    move v2, v4

    :goto_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget-boolean v2, p0, Lmokee/hardware/LiveDisplayConfig;->mDefaultCABC:Z

    if-eqz v2, :cond_3

    move v2, v4

    :goto_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget-boolean v2, p0, Lmokee/hardware/LiveDisplayConfig;->mDefaultColorEnhancement:Z

    if-eqz v2, :cond_4

    move v2, v4

    :goto_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget-object v2, p0, Lmokee/hardware/LiveDisplayConfig;->mColorTemperatureRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget-object v2, p0, Lmokee/hardware/LiveDisplayConfig;->mColorTemperatureRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget-object v2, p0, Lmokee/hardware/LiveDisplayConfig;->mColorBalanceRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    iget-object v2, p0, Lmokee/hardware/LiveDisplayConfig;->mColorBalanceRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    const/16 v2, 0xa

    new-array v3, v2, [F

    .line 204
    iget-object v2, p0, Lmokee/hardware/LiveDisplayConfig;->mHueRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v3, v5

    iget-object v2, p0, Lmokee/hardware/LiveDisplayConfig;->mHueRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v3, v4

    .line 205
    iget-object v2, p0, Lmokee/hardware/LiveDisplayConfig;->mSaturationRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v4, 0x2

    aput v2, v3, v4

    iget-object v2, p0, Lmokee/hardware/LiveDisplayConfig;->mSaturationRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v4, 0x3

    aput v2, v3, v4

    .line 206
    iget-object v2, p0, Lmokee/hardware/LiveDisplayConfig;->mIntensityRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v4, 0x4

    aput v2, v3, v4

    iget-object v2, p0, Lmokee/hardware/LiveDisplayConfig;->mIntensityRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v4, 0x5

    aput v2, v3, v4

    .line 207
    iget-object v2, p0, Lmokee/hardware/LiveDisplayConfig;->mContrastRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v4, 0x6

    aput v2, v3, v4

    iget-object v2, p0, Lmokee/hardware/LiveDisplayConfig;->mContrastRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v4, 0x7

    aput v2, v3, v4

    .line 208
    iget-object v2, p0, Lmokee/hardware/LiveDisplayConfig;->mSaturationThresholdRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/16 v4, 0x8

    aput v2, v3, v4

    iget-object v2, p0, Lmokee/hardware/LiveDisplayConfig;->mSaturationThresholdRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/16 v4, 0x9

    aput v2, v3, v4

    .line 203
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 211
    invoke-virtual {v1}, Lmokee/os/Concierge$ParcelInfo;->complete()V

    .line 185
    return-void

    .line 191
    :cond_0
    const-wide/16 v2, 0x0

    goto/16 :goto_0

    :cond_1
    move v2, v5

    .line 195
    goto/16 :goto_1

    :cond_2
    move v2, v5

    .line 196
    goto/16 :goto_2

    :cond_3
    move v2, v5

    .line 197
    goto/16 :goto_3

    :cond_4
    move v2, v5

    .line 198
    goto/16 :goto_4
.end method
