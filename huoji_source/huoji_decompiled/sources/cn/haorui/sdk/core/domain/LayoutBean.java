package cn.haorui.sdk.core.domain;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class LayoutBean implements Serializable {
    private int dpi;
    private int mtime;
    private List<StyleBean> style;

    public static class StyleBean implements Serializable {
        private ButtonBean button;
        private ContainerBean container;
        private ContentBean content;
        private CreativeBean creative;
        private CreativeBean5 creatives;
        private DislikeBean dislike;
        private IconBean icon;
        private int id;
        private LogoBean logo;
        private SourceBean source;
        private TitleBean title;
        private int type;

        public static class BackgroundBean implements Serializable {
            private String color;

            public String getColor() {
                return this.color;
            }

            public void setColor(String str) {
                this.color = str;
            }
        }

        public static class BorderBean implements Serializable {
            private boolean clip;
            private String color;
            private List<Integer> radius;
            private int size;

            public boolean getClip() {
                return this.clip;
            }

            public String getColor() {
                return this.color;
            }

            public List<Integer> getRadius() {
                return this.radius;
            }

            public int getSize() {
                return this.size;
            }

            public void setClip(boolean z) {
                this.clip = z;
            }

            public void setColor(String str) {
                this.color = str;
            }

            public void setRadius(List<Integer> list) {
                this.radius = list;
            }

            public void setSize(int i) {
                this.size = i;
            }
        }

        public static class ButtonBean implements Serializable {
            private BackgroundBean background;
            private BorderBean border;
            private List<Integer> margin;
            private List<Integer> padding;
            private TextBean text;

            public BackgroundBean getBackground() {
                return this.background;
            }

            public BorderBean getBorder() {
                return this.border;
            }

            public List<Integer> getMargin() {
                return this.margin;
            }

            public List<Integer> getPadding() {
                return this.padding;
            }

            public TextBean getText() {
                return this.text;
            }

            public void setBackground(BackgroundBean backgroundBean) {
                this.background = backgroundBean;
            }

            public void setBorder(BorderBean borderBean) {
                this.border = borderBean;
            }

            public void setMargin(List<Integer> list) {
                this.margin = list;
            }

            public void setPadding(List<Integer> list) {
                this.padding = list;
            }

            public void setText(TextBean textBean) {
                this.text = textBean;
            }
        }

        public static class ContainerBean implements Serializable {
            private BorderBean border;
            private List<Integer> padding;

            public BorderBean getBorder() {
                return this.border;
            }

            public List<Integer> getPadding() {
                return this.padding;
            }

            public void setBorder(BorderBean borderBean) {
                this.border = borderBean;
            }

            public void setPadding(List<Integer> list) {
                this.padding = list;
            }
        }

        public static class ContentBean implements Serializable {
            private List<Integer> margin;
            private List<Integer> padding;
            private TextBean text;

            public List<Integer> getMargin() {
                return this.margin;
            }

            public List<Integer> getPadding() {
                return this.padding;
            }

            public TextBean getText() {
                return this.text;
            }

            public void setMargin(List<Integer> list) {
                this.margin = list;
            }

            public void setPadding(List<Integer> list) {
                this.padding = list;
            }

            public void setText(TextBean textBean) {
                this.text = textBean;
            }
        }

        public static class CreativeBean implements Serializable {
            private BorderBean border;
            private List<Integer> margin;

            public BorderBean getBorder() {
                return this.border;
            }

            public List<Integer> getMargin() {
                return this.margin;
            }

            public void setBorder(BorderBean borderBean) {
                this.border = borderBean;
            }

            public void setMargin(List<Integer> list) {
                this.margin = list;
            }
        }

        public static class CreativeBean5 implements Serializable {
            private ChildsBean childs;
            private List<Integer> margin;

            public static class ChildsBean implements Serializable {
                private ChildBean center;
                private ChildBean left;
                private ChildBean right;

                public static class ChildBean implements Serializable {
                    private BorderBean border;
                    private List<Integer> margin;

                    public BorderBean getBorder() {
                        return this.border;
                    }

                    public List<Integer> getMargin() {
                        return this.margin;
                    }

                    public void setBorder(BorderBean borderBean) {
                        this.border = borderBean;
                    }

                    public void setMargin(List<Integer> list) {
                        this.margin = list;
                    }
                }

                public ChildBean getCenter() {
                    return this.center;
                }

                public ChildBean getLeft() {
                    return this.left;
                }

                public ChildBean getRight() {
                    return this.right;
                }

                public void setCenter(ChildBean childBean) {
                    this.center = childBean;
                }

                public void setLeft(ChildBean childBean) {
                    this.left = childBean;
                }

                public void setRight(ChildBean childBean) {
                    this.right = childBean;
                }
            }

            public ChildsBean getChilds() {
                return this.childs;
            }

            public List<Integer> getMargin() {
                return this.margin;
            }

            public void setChilds(ChildsBean childsBean) {
                this.childs = childsBean;
            }

            public void setMargin(List<Integer> list) {
                this.margin = list;
            }
        }

        public static class DislikeBean implements Serializable {
            private BackgroundBean background;
            private BorderBean border;
            private boolean hide;
            private List<Integer> margin;
            private List<Integer> padding;
            private TextBean text;

            public BackgroundBean getBackground() {
                return this.background;
            }

            public BorderBean getBorder() {
                return this.border;
            }

            public List<Integer> getMargin() {
                return this.margin;
            }

            public List<Integer> getPadding() {
                return this.padding;
            }

            public TextBean getText() {
                return this.text;
            }

            public boolean isHide() {
                return this.hide;
            }

            public void setBackground(BackgroundBean backgroundBean) {
                this.background = backgroundBean;
            }

            public void setBorder(BorderBean borderBean) {
                this.border = borderBean;
            }

            public void setHide(boolean z) {
                this.hide = z;
            }

            public void setMargin(List<Integer> list) {
                this.margin = list;
            }

            public void setPadding(List<Integer> list) {
                this.padding = list;
            }

            public void setText(TextBean textBean) {
                this.text = textBean;
            }
        }

        public static class IconBean implements Serializable {
            private BorderBean border;
            private List<Integer> margin;
            private int width;

            public BorderBean getBorder() {
                return this.border;
            }

            public List<Integer> getMargin() {
                return this.margin;
            }

            public int getWidth() {
                return this.width;
            }

            public void setBorder(BorderBean borderBean) {
                this.border = borderBean;
            }

            public void setMargin(List<Integer> list) {
                this.margin = list;
            }

            public void setWidth(int i) {
                this.width = i;
            }
        }

        public static class LogoBean implements Serializable {
            private boolean hide;
            private List<Integer> margin;

            public List<Integer> getMargin() {
                return this.margin;
            }

            public boolean isHide() {
                return this.hide;
            }

            public void setHide(boolean z) {
                this.hide = z;
            }

            public void setMargin(List<Integer> list) {
                this.margin = list;
            }
        }

        public static class SourceBean implements Serializable {
            private boolean hide;
            private List<Integer> margin;
            private List<Integer> padding;
            private TextBean text;

            public List<Integer> getMargin() {
                return this.margin;
            }

            public List<Integer> getPadding() {
                return this.padding;
            }

            public TextBean getText() {
                return this.text;
            }

            public boolean isHide() {
                return this.hide;
            }

            public void setHide(boolean z) {
                this.hide = z;
            }

            public void setMargin(List<Integer> list) {
                this.margin = list;
            }

            public void setPadding(List<Integer> list) {
                this.padding = list;
            }

            public void setText(TextBean textBean) {
                this.text = textBean;
            }
        }

        public static class TextBean implements Serializable {
            private String color;
            private String family;
            private int lines;
            private int size;

            public String getColor() {
                return this.color;
            }

            public String getFamily() {
                return this.family;
            }

            public int getLines() {
                return this.lines;
            }

            public int getSize() {
                return this.size;
            }

            public void setColor(String str) {
                this.color = str;
            }

            public void setFamily(String str) {
                this.family = str;
            }

            public void setLines(int i) {
                this.lines = i;
            }

            public void setSize(int i) {
                this.size = i;
            }
        }

        public static class TitleBean implements Serializable {
            private List<Integer> margin;
            private List<Integer> padding;
            private TextBean text;

            public List<Integer> getMargin() {
                return this.margin;
            }

            public List<Integer> getPadding() {
                return this.padding;
            }

            public TextBean getText() {
                return this.text;
            }

            public void setMargin(List<Integer> list) {
                this.margin = list;
            }

            public void setPadding(List<Integer> list) {
                this.padding = list;
            }

            public void setText(TextBean textBean) {
                this.text = textBean;
            }
        }

        public ButtonBean getButton() {
            return this.button;
        }

        public ContainerBean getContainer() {
            return this.container;
        }

        public ContentBean getContent() {
            return this.content;
        }

        public CreativeBean getCreative() {
            return this.creative;
        }

        public CreativeBean5 getCreatives() {
            return this.creatives;
        }

        public DislikeBean getDislike() {
            return this.dislike;
        }

        public IconBean getIcon() {
            return this.icon;
        }

        public int getId() {
            return this.id;
        }

        public LogoBean getLogo() {
            return this.logo;
        }

        public SourceBean getSource() {
            return this.source;
        }

        public TitleBean getTitle() {
            return this.title;
        }

        public int getType() {
            return this.type;
        }

        public void setButton(ButtonBean buttonBean) {
            this.button = buttonBean;
        }

        public void setContainer(ContainerBean containerBean) {
            this.container = containerBean;
        }

        public void setContent(ContentBean contentBean) {
            this.content = contentBean;
        }

        public void setCreative(CreativeBean creativeBean) {
            this.creative = creativeBean;
        }

        public void setCreatives(CreativeBean5 creativeBean5) {
            this.creatives = creativeBean5;
        }

        public void setDislike(DislikeBean dislikeBean) {
            this.dislike = dislikeBean;
        }

        public void setIcon(IconBean iconBean) {
            this.icon = iconBean;
        }

        public void setId(int i) {
            this.id = i;
        }

        public void setLogo(LogoBean logoBean) {
            this.logo = logoBean;
        }

        public void setSource(SourceBean sourceBean) {
            this.source = sourceBean;
        }

        public void setTitle(TitleBean titleBean) {
            this.title = titleBean;
        }

        public void setType(int i) {
            this.type = i;
        }
    }

    public int getDpi() {
        return this.dpi;
    }

    public int getMtime() {
        return this.mtime;
    }

    public List<StyleBean> getStyle() {
        return this.style;
    }

    public void setDpi(int i) {
        this.dpi = i;
    }

    public void setMtime(int i) {
        this.mtime = i;
    }

    public void setStyle(List<StyleBean> list) {
        this.style = list;
    }
}
