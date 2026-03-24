package z2;

import android.content.ContentResolver;
import android.content.UriMatcher;
import android.net.Uri;
import android.provider.ContactsContract;
import androidx.annotation.NonNull;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public class o0OOooO0 extends o0OO0<InputStream> {
    private static final int OooooO0 = 1;
    private static final int OooooOO = 2;
    private static final int OooooOo = 3;
    private static final int Oooooo = 5;
    private static final int Oooooo0 = 4;
    private static final UriMatcher OoooooO;

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        OoooooO = uriMatcher;
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*/#", 1);
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*", 1);
        uriMatcher.addURI("com.android.contacts", "contacts/#/photo", 2);
        uriMatcher.addURI("com.android.contacts", "contacts/#", 3);
        uriMatcher.addURI("com.android.contacts", "contacts/#/display_photo", 4);
        uriMatcher.addURI("com.android.contacts", "phone_lookup/*", 5);
    }

    public o0OOooO0(ContentResolver contentResolver, Uri uri) {
        super(contentResolver, uri);
    }

    private InputStream OooO(Uri uri, ContentResolver contentResolver) throws FileNotFoundException {
        int iMatch = OoooooO.match(uri);
        if (iMatch != 1) {
            if (iMatch == 3) {
                return OooOO0(contentResolver, uri);
            }
            if (iMatch != 5) {
                return contentResolver.openInputStream(uri);
            }
        }
        Uri uriLookupContact = ContactsContract.Contacts.lookupContact(contentResolver, uri);
        if (uriLookupContact != null) {
            return OooOO0(contentResolver, uriLookupContact);
        }
        throw new FileNotFoundException("Contact cannot be found");
    }

    private InputStream OooOO0(ContentResolver contentResolver, Uri uri) {
        return ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, uri, true);
    }

    @Override // z2.o0O0oo00
    @NonNull
    public Class<InputStream> OooO00o() {
        return InputStream.class;
    }

    @Override // z2.o0OO0
    /* JADX INFO: renamed from: OooO0oO, reason: merged with bridge method [inline-methods] */
    public void OooO0OO(InputStream inputStream) throws IOException {
        inputStream.close();
    }

    @Override // z2.o0OO0
    /* JADX INFO: renamed from: OooO0oo, reason: merged with bridge method [inline-methods] */
    public InputStream OooO0o(Uri uri, ContentResolver contentResolver) throws FileNotFoundException {
        InputStream inputStreamOooO = OooO(uri, contentResolver);
        if (inputStreamOooO != null) {
            return inputStreamOooO;
        }
        throw new FileNotFoundException("InputStream is null for " + uri);
    }
}
