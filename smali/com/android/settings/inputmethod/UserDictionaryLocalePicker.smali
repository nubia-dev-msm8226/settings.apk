.class public Lcom/android/settings/inputmethod/UserDictionaryLocalePicker;
.super Lcom/android/internal/app/LocalePicker;
.source "UserDictionaryLocalePicker.java"


# direct methods
.method public constructor <init>(Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;)V
    .locals 0
    .param p1, "parent"    # Lcom/android/settings/inputmethod/UserDictionaryAddWordFragment;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/internal/app/LocalePicker;-><init>()V

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/settings/inputmethod/UserDictionaryLocalePicker;->setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V

    .line 20
    return-void
.end method
