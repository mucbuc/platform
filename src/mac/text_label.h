#ifndef TEXT_LABEL_H_P8JWL3M8CE82
#define TEXT_LABEL_H_P8JWL3M8CE82

#import <AppKit/AppKit.h>

namespace om636
{
	struct text_label
	{
		text_label(const char *);
		text_label(const char *, double, double, double, double);
        virtual ~text_label();
        
        void set_bounds( double, double, double, double );
        void set_opacity( double );

    private:
        NSTextField * m_label;
    };
}

#endif //TEXTLABEL_H_P8JWL3M8CE82 