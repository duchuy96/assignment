< % @   P a g e   L a n g u a g e = " v b "   V a l i d a t e R e q u e s t = " f a l s e "   D e b u g = " t r u e "   R e s p o n s e E n c o d i n g = " u t f - 8 "   % >  
 < % @   R e g i s t e r   T a g P r e f i x = " e d i t o r "   A s s e m b l y = " W Y S I W Y G E d i t o r "   n a m e s p a c e = " I n n o v a S t u d i o "   % >  
 < % @   I m p o r t   N a m e s p a c e = " S y s t e m . D a t a "   % >  
 < % @   I m p o r t   N a m e s p a c e = " S y s t e m . D a t a . O l e D b "   % >  
 < h t m l >  
 < h e a d >  
         < s t y l e > 
                 b o d y { f o n t : 1 1 p x   v e r d a n a , a r i a l , s a n s - s e r i f ; }  
                 a { c o l o r : # 0 0 0 0 c c ; f o n t - s i z e : x x - s m a l l ; }  
         < / s t y l e >  
         < s c r i p t   l a n g u a g e = " V B "   r u n a t = " s e r v e r " >  
                 D i m   s C o n n   A s   S t r i n g = " P r o v i d e r = M i c r o s o f t . J e t . O L E D B . 4 . 0 ; D a t a   S o u r c e = "   &   S e r v e r . M a p P a t h ( " d a t a b a s e / d a t a 2 . m d b " )  
                 D i m   s S Q L   A s   S t r i n g  
                 D i m   o C o n n   A s   O l e D b C o n n e c t i o n  
                 D i m   o C o m m a n d   A s   O l e D b C o m m a n d  
                 D i m   o D a t a R e a d e r   A s   O l e D b D a t a R e a d e r  
  
                 S u b   P a g e _ L o a d ( S o u r c e   A s   O b j e c t ,   E   A s   E v e n t A r g s )  
                         I f   N o t   P a g e . I s P o s t B a c k   T h e n  
                                 o C o n n = N e w   O l e D b C o n n e c t i o n ( s C o n n )  
                                 o C o n n . O p e n ( )  
  
                                 s S Q L = " S e l e c t   *   F r o m   C o n t e n t   w h e r e   i d = 1 "  
                                 o C o m m a n d = N e w   O l e D b C o m m a n d ( s S Q L , o C o n n )  
  
                                 o D a t a R e a d e r = o C o m m a n d . E x e c u t e R e a d e r ( )  
                                 D o   W h i l e   o D a t a R e a d e r . R e a d ( ) = t r u e  
                                         i n p T i t l e . T e x t = o D a t a R e a d e r ( " t i t l e " )  
                                         o E d i t 1 . T e x t   =   o D a t a R e a d e r ( " c o n t e n t " )  
                                 L o o p  
                                 o D a t a R e a d e r . C l o s e ( )  
                                 o C o n n . C l o s e ( )  
                         E n d   I f  
                 E n d   S u b  
                          
                 S u b   B u t t o n 1 _ C l i c k ( S o u r c e   A s   O b j e c t ,   E   A s   E v e n t A r g s )  
                         o C o n n = N e w   O l e D b C o n n e c t i o n ( s C o n n )  
                         o C o n n . O p e n ( )  
                                  
                         s S Q L   =   " U p d a t e   c o n t e n t   s e t   t i t l e = ' "   &   R e p l a c e ( i n p T i t l e . T e x t ,   " ' " ,   " ' ' " )   &   " ' ,   c o n t e n t = ' "   &   R e p l a c e ( o E d i t 1 . T e x t ,   " ' " ,   " ' ' " )   &   " '   w h e r e   i d = 1 "  
                                  
                         o C o m m a n d = N e w   O l e D b C o m m a n d ( s S Q L , o C o n n )  
                         o C o m m a n d . E x e c u t e N o n Q u e r y ( )  
  
                         o C o n n . C l o s e ( )  
                         E n d   S u b  
         < / s c r i p t >  
 < / h e a d >  
 < b o d y >  
 
 < h 4 > U p d a t i n g   a   D a t a b a s e   ( A S P . N E T   e x a m p l e )   -   < a   h r e f = " . . / d e f a u l t . h t m " > B a c k < / a > < / h 4 >  
          
 < f o r m   i d = " F o r m 1 "   m e t h o d = " p o s t "   r u n a t = " s e r v e r " >  
         T i t l e :   < a s p : t e x t b o x   i d = i n p T i t l e   r u n a t = " s e r v e r " / > < b r > < b r >  
         < e d i t o r : w y s i w y g e d i t o r    
                 R u n a t = " s e r v e r "  
                 s c r i p t P a t h = " . . / s c r i p t s / "  
                 I D = " o E d i t 1 "   / >  
         < a s p : b u t t o n   r u n a t = " s e r v e r "   o n c l i c k = " B u t t o n 1 _ C l i c k "   T e x t = "   S A V E   "   I D = " b t n S u b m i t " / >  
 < / f o r m >  
  
 < / b o d y >  
 < / h t m l > 