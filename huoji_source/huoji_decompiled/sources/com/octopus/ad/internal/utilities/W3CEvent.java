package com.octopus.ad.internal.utilities;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Build;
import android.provider.CalendarContract;
import androidx.core.app.NotificationCompat;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.anythink.expressad.foundation.d.c;
import com.umeng.commonsdk.proguard.v;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class W3CEvent {
    public static final String W3C_DAILY = "daily";
    public static final String W3C_MONTHLY = "monthly";
    public static final String W3C_WEEKLY = "weekly";
    public static final String W3C_YEARLY = "yearly";
    private static SimpleDateFormat format1;
    private static SimpleDateFormat format2;
    public static boolean useMIME;
    private String description;
    private String end;
    private String id;
    private String location;
    private W3CRepeatRule recurrence;
    private String reminder;
    private String start;
    private String status;
    private String summary;
    private String transparency;

    static {
        Locale locale = Locale.US;
        format1 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZZZZZ", locale);
        format2 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mmZZZZZ", locale);
    }

    private W3CEvent() {
    }

    public static W3CEvent createFromJSON(String str) {
        W3CEvent w3CEvent = new W3CEvent();
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (!jSONObject.isNull("id")) {
                w3CEvent.setId(jSONObject.getString("id"));
            }
            if (!jSONObject.isNull("description")) {
                w3CEvent.setDescription(jSONObject.getString("description"));
            }
            if (!jSONObject.isNull(RequestParameters.SUBRESOURCE_LOCATION)) {
                w3CEvent.setLocation(jSONObject.getString(RequestParameters.SUBRESOURCE_LOCATION));
            }
            if (!jSONObject.isNull("summary")) {
                w3CEvent.setSummary(jSONObject.getString("summary"));
            }
            if (!jSONObject.isNull(c.bT)) {
                w3CEvent.setStart(jSONObject.getString(c.bT));
            }
            if (!jSONObject.isNull("end")) {
                if (jSONObject.isNull(c.bT)) {
                    w3CEvent.setStart(jSONObject.getString("end"));
                }
                w3CEvent.setEnd(jSONObject.getString("end"));
            }
            if (!jSONObject.isNull("status")) {
                w3CEvent.setStatus(jSONObject.getString("status"));
            }
            if (!jSONObject.isNull("freebusy")) {
                w3CEvent.setTransparency(jSONObject.getString("freebusy"));
            }
            if (!jSONObject.isNull(NotificationCompat.CATEGORY_REMINDER)) {
                w3CEvent.setReminder(jSONObject.getString(NotificationCompat.CATEGORY_REMINDER));
            }
            if (!jSONObject.isNull("recurrence")) {
                w3CEvent.setRecurrence(new W3CRepeatRule());
                JSONObject jSONObject2 = jSONObject.getJSONObject("recurrence");
                if (!jSONObject2.isNull("frequency")) {
                    w3CEvent.getRecurrence().setFrequency(jSONObject2.getString("frequency"));
                }
                if (!jSONObject2.isNull(v.av)) {
                    w3CEvent.getRecurrence().setInterval(jSONObject2.getInt(v.av));
                }
                if (!jSONObject2.isNull("expires")) {
                    w3CEvent.getRecurrence().setExpires(jSONObject2.getString("expires"));
                }
                if (!jSONObject2.isNull("exceptionDates")) {
                    JSONArray jSONArray = jSONObject2.getJSONArray("exceptionDates");
                    int length = jSONArray.length();
                    w3CEvent.getRecurrence().setExceptionDates(new String[length]);
                    for (int i = 0; i < length; i++) {
                        w3CEvent.getRecurrence().getExceptionDates()[i] = jSONArray.getString(i);
                    }
                }
                if (!jSONObject2.isNull("daysInWeek")) {
                    JSONArray jSONArray2 = jSONObject2.getJSONArray("daysInWeek");
                    int length2 = jSONArray2.length();
                    w3CEvent.getRecurrence().setDaysInWeek(new int[length2]);
                    for (int i2 = 0; i2 < length2; i2++) {
                        w3CEvent.getRecurrence().getDaysInWeek()[i2] = jSONArray2.getInt(i2);
                    }
                }
                if (!jSONObject2.isNull("daysInMonth")) {
                    JSONArray jSONArray3 = jSONObject2.getJSONArray("daysInMonth");
                    int length3 = jSONArray3.length();
                    w3CEvent.getRecurrence().setDaysInMonth(new int[length3]);
                    for (int i3 = 0; i3 < length3; i3++) {
                        w3CEvent.getRecurrence().getDaysInMonth()[i3] = jSONArray3.getInt(i3);
                    }
                }
                if (!jSONObject2.isNull("daysInYear")) {
                    JSONArray jSONArray4 = jSONObject2.getJSONArray("daysInYear");
                    int length4 = jSONArray4.length();
                    w3CEvent.getRecurrence().setDaysInYear(new int[length4]);
                    for (int i4 = 0; i4 < length4; i4++) {
                        w3CEvent.getRecurrence().getDaysInYear()[i4] = jSONArray4.getInt(i4);
                    }
                }
                if (!jSONObject2.isNull("weeksInMonth")) {
                    JSONArray jSONArray5 = jSONObject2.getJSONArray("weeksInMonth");
                    int length5 = jSONArray5.length();
                    w3CEvent.getRecurrence().setWeeksInMonth(new int[length5]);
                    for (int i5 = 0; i5 < length5; i5++) {
                        w3CEvent.getRecurrence().getWeeksInMonth()[i5] = jSONArray5.getInt(i5);
                    }
                }
                if (!jSONObject2.isNull("monthsInYear")) {
                    JSONArray jSONArray6 = jSONObject2.getJSONArray("monthsInYear");
                    int length6 = jSONArray6.length();
                    w3CEvent.getRecurrence().setMonthsInYear(new int[length6]);
                    for (int i6 = 0; i6 < length6; i6++) {
                        w3CEvent.getRecurrence().getMonthsInYear()[i6] = jSONArray6.getInt(i6);
                    }
                }
            }
        } catch (JSONException unused) {
        }
        return w3CEvent;
    }

    private long millisFromDateString(String str) {
        try {
            try {
                try {
                    return format1.parse(str).getTime();
                } catch (ParseException unused) {
                    return Long.parseLong(str);
                }
            } catch (ParseException unused2) {
                return format2.parse(str).getTime();
            }
        } catch (NumberFormatException unused3) {
            return -1L;
        }
    }

    public String getDescription() {
        return this.description;
    }

    public String getEnd() {
        return this.end;
    }

    public String getId() {
        return this.id;
    }

    @SuppressLint({"NewApi", "InlinedApi"})
    public Intent getInsertIntent() {
        Intent intent;
        Intent type;
        String str;
        String str2;
        long jAbs;
        boolean z = !useMIME && Build.VERSION.SDK_INT >= 14;
        if (z) {
            intent = new Intent("android.intent.action.EDIT");
            type = intent.setData(CalendarContract.Events.CONTENT_URI);
        } else {
            intent = new Intent("android.intent.action.EDIT");
            type = intent.setType("vnd.android.cursor.item/event");
        }
        if (!StringUtil.isEmpty(getDescription())) {
            type.putExtra("title", getDescription());
        }
        if (!StringUtil.isEmpty(getLocation())) {
            type.putExtra("eventLocation", getLocation());
        }
        if (!StringUtil.isEmpty(getSummary())) {
            type.putExtra("description", getSummary());
        }
        if (!StringUtil.isEmpty(getStart())) {
            long jMillisFromDateString = millisFromDateString(getStart());
            if (jMillisFromDateString > 0) {
                type.putExtra("beginTime", jMillisFromDateString);
            }
        }
        if (!StringUtil.isEmpty(getEnd())) {
            long jMillisFromDateString2 = millisFromDateString(getEnd());
            if (jMillisFromDateString2 > 0) {
                type.putExtra("endTime", jMillisFromDateString2);
            }
        }
        if (!StringUtil.isEmpty(getStatus()) && z) {
            type.putExtra("eventStatus", getStatus());
        }
        if (!StringUtil.isEmpty(getTransparency()) && z) {
            type.putExtra("visible", !getTransparency().equals("opaque"));
        }
        if (!StringUtil.isEmpty(getReminder())) {
            long jMillisFromDateString3 = millisFromDateString(getReminder());
            if (jMillisFromDateString3 < 0) {
                if (z) {
                    jAbs = Math.abs(jMillisFromDateString3 / 60000);
                    type.putExtra("minutes", jAbs);
                }
            } else if (!StringUtil.isEmpty(getStart()) && z) {
                long jMillisFromDateString4 = millisFromDateString(getStart());
                if (jMillisFromDateString4 > 0) {
                    jAbs = Math.abs((jMillisFromDateString4 - jMillisFromDateString3) / 60000);
                    type.putExtra("minutes", jAbs);
                }
            }
        }
        String str3 = "";
        StringBuilder sb = new StringBuilder("");
        if (getRecurrence() != null) {
            String frequency = getRecurrence().getFrequency();
            if (!StringUtil.isEmpty(frequency)) {
                if (W3C_DAILY.equals(frequency)) {
                    str2 = "FREQ=DAILY;";
                } else if (W3C_WEEKLY.equals(frequency)) {
                    str2 = "FREQ=WEEKLY;";
                } else if (W3C_MONTHLY.equals(frequency)) {
                    str2 = "FREQ=MONTHLY;";
                } else if (W3C_YEARLY.equals(frequency)) {
                    str2 = "FREQ=YEARLY;";
                }
                sb.append(str2);
                str3 = frequency;
            }
            if (getRecurrence().getInterval() > 0) {
                sb.append("INTERVAL=");
                sb.append(getRecurrence().getInterval());
                sb.append(";");
            }
            if (W3C_WEEKLY.equals(str3) && getRecurrence().getDaysInWeek() != null && getRecurrence().getDaysInWeek().length > 0) {
                sb.append("BYDAY=");
                for (int i : getRecurrence().getDaysInWeek()) {
                    switch (i) {
                        case 0:
                            str = "SU,";
                            sb.append(str);
                            break;
                        case 1:
                            str = "MO,";
                            sb.append(str);
                            break;
                        case 2:
                            str = "TU,";
                            sb.append(str);
                            break;
                        case 3:
                            str = "WE,";
                            sb.append(str);
                            break;
                        case 4:
                            str = "TH,";
                            sb.append(str);
                            break;
                        case 5:
                            str = "FR,";
                            sb.append(str);
                            break;
                        case 6:
                            str = "SA,";
                            sb.append(str);
                            break;
                    }
                }
                sb.setCharAt(sb.length() - 1, ';');
            }
            if (W3C_MONTHLY.equals(str3) && getRecurrence().getDaysInMonth() != null && getRecurrence().getDaysInMonth().length > 0) {
                sb.append("BYMONTHDAY=");
                for (int i2 : getRecurrence().getDaysInMonth()) {
                    sb.append(i2);
                    sb.append(",");
                }
                sb.setCharAt(sb.length() - 1, ';');
            }
            if (W3C_YEARLY.equals(str3) && getRecurrence().getDaysInYear() != null && getRecurrence().getDaysInYear().length > 0) {
                sb.append("BYYEARDAY=");
                for (int i3 : getRecurrence().getDaysInYear()) {
                    sb.append(i3);
                    sb.append(",");
                }
                sb.setCharAt(sb.length() - 1, ';');
            }
            if (W3C_YEARLY.equals(str3) && getRecurrence().getMonthsInYear() != null && getRecurrence().getMonthsInYear().length > 0) {
                sb.append("BYMONTH=");
                for (int i4 : getRecurrence().getMonthsInYear()) {
                    sb.append(i4);
                    sb.append(",");
                }
                sb.setCharAt(sb.length() - 1, ';');
            }
            if (W3C_MONTHLY.equals(str3) && getRecurrence().getWeeksInMonth() != null && getRecurrence().getWeeksInMonth().length > 0) {
                sb.append("BYWEEKNO=");
                for (int i5 : getRecurrence().getWeeksInMonth()) {
                    sb.append(i5);
                    sb.append(",");
                }
                sb.setCharAt(sb.length() - 1, ';');
            }
            if (!StringUtil.isEmpty(getRecurrence().getExpires())) {
                sb.append("UNTIL=");
                sb.append(getRecurrence().getExpires());
                sb.append(";");
            }
            if (getRecurrence().getExceptionDates() != null && getRecurrence().getExceptionDates().length > 0) {
                sb.append("EXDATE=");
                for (String str4 : getRecurrence().getExceptionDates()) {
                    sb.append(str4);
                    sb.append(",");
                }
                sb.setCharAt(sb.length() - 1, ';');
            }
            type.putExtra("rrule", sb.toString());
        }
        return type;
    }

    public String getLocation() {
        return this.location;
    }

    public W3CRepeatRule getRecurrence() {
        return this.recurrence;
    }

    public String getReminder() {
        return this.reminder;
    }

    public String getStart() {
        return this.start;
    }

    public String getStatus() {
        return this.status;
    }

    public String getSummary() {
        return this.summary;
    }

    public String getTransparency() {
        return this.transparency;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setEnd(String str) {
        this.end = str;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setLocation(String str) {
        this.location = str;
    }

    public void setRecurrence(W3CRepeatRule w3CRepeatRule) {
        this.recurrence = w3CRepeatRule;
    }

    public void setReminder(String str) {
        this.reminder = str;
    }

    public void setStart(String str) {
        this.start = str;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public void setSummary(String str) {
        this.summary = str;
    }

    public void setTransparency(String str) {
        this.transparency = str;
    }
}
