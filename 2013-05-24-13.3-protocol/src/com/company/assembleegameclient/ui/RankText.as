package com.company.assembleegameclient.ui
{
   import flash.display.Sprite;
   import movimet.Lufub;
   import ruwysepyd.Junefolef;
   import nec.Nara;
   import flash.filters.DropShadowFilter;
   import com.company.assembleegameclient.util.Wagoq;
   import nec.Sire;
   import aaa.rotmg.i18n.I18nKeys;


   public class RankText extends Sprite
   {
      public function RankText(param1:int, param2:Boolean, param3:Boolean) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.jiguvovu=new Junefolef();
         super();
         this.kyjovela=param2;
         if(param3)
         {
            this.qyjivudy=this.makeText();
            this.qyjivudy.setStringBuilder(new Sire().setParams(I18nKeys.zybytuku));
            this.qyjivudy.filters=[new DropShadowFilter(0,0,0)];
            this.qyjivudy.textChanged.addOnce(this.position);
            addChild(this.qyjivudy);
         }
         mouseEnabled=false;
         mouseChildren=false;
         this.draw(param1);
         return;
      }

      public var background:Sprite = null;

      public var kyjovela:Boolean;

      private var numStars_:int = -1;

      private var qyjivudy:Lufub = null;

      private var jiguvovu:Junefolef;

      private var icon:Sprite;

      public function makeText() : Lufub {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:int = this.kyjovela?18:16;
         var _loc2_:Lufub = new Lufub();
         _loc2_.setSize(_loc1_).setColor(11776947);
         _loc2_.setBold(this.kyjovela);
         return _loc2_;
      }

      public function draw(param1:int) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var text:Lufub = null;
         var onTextChanged:Function = null;
         var numStars:int = param1;
         onTextChanged=new function():void
         {
            text.y=text.height;
            icon.x=text.width+2;
            icon.y=text.y-icon.height;
            var _loc1_:int = icon.x+icon.width;
            background.graphics.clear();
            background.graphics.beginFill(0,0.4);
            var _loc2_:Number = icon.height+8;
            background.graphics.drawRoundRect(-2,icon.y-3,_loc1_+6,_loc2_,12,12);
            background.graphics.endFill();
            position();
            return;
         };
         if(numStars==this.numStars_)
         {
            return;
         }
         this.numStars_=numStars;
         if(!(this.background==null)&&(contains(this.background)))
         {
            removeChild(this.background);
         }
         if(this.numStars_<0)
         {
            return;
         }
         this.background=new Sprite();
         text=this.makeText();
         text.setVerticalAlign(Lufub.BOTTOM);
         text.setStringBuilder(new Nara(this.numStars_.toString()));
         text.filters=[new DropShadowFilter(0,0,0,1,4,4,2)];
         this.background.addChild(text);
         this.icon=this.kyjovela?Wagoq.deb(this.numStars_):Wagoq.nub(this.numStars_);
         this.background.addChild(this.icon);
         text.textChanged.addOnce(onTextChanged);
         addChild(this.background);
         if(this.qyjivudy!=null)
         {
            this.zin();
         }
         return;
      }

      private function zin() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.jiguvovu.isEmpty())
         {
            this.position();
         }
         else
         {
            this.jiguvovu.complete.addOnce(this.position);
         }
         return;
      }

      private function position() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.qyjivudy)
         {
            this.background.x=this.qyjivudy.width;
            this.qyjivudy.y=this.icon.y-3;
         }
         return;
      }
   }

}