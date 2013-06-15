package com.company.assembleegameclient.ui
{
   import flash.display.Sprite;
   import hivysif.Guzowoja;
   import wenono.Nuri;
   import jediwip.Vofezuzy;
   import flash.filters.DropShadowFilter;
   import com.company.assembleegameclient.util.Cinihel;
   import jediwip.Kybidu;
   import komi.Vibemod;


   public class RankText extends Sprite
   {
      public function RankText(param1:int, param2:Boolean, param3:Boolean) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.ryfoc=new Nuri();
         super();
         this.syrapidow=param2;
         if(param3)
         {
            this.ciq=this.makeText();
            this.ciq.setStringBuilder(new Kybidu().setParams(Vibemod.meq));
            this.ciq.filters=[new DropShadowFilter(0,0,0)];
            this.ciq.textChanged.addOnce(this.position);
            addChild(this.ciq);
         }
         mouseEnabled=false;
         mouseChildren=false;
         this.draw(param1);
         return;
      }

      public var background:Sprite = null;

      public var syrapidow:Boolean;

      private var numStars_:int = -1;

      private var ciq:Guzowoja = null;

      private var ryfoc:Nuri;

      private var icon:Sprite;

      public function makeText() : Guzowoja {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:int = this.syrapidow?18:16;
         var _loc2_:Guzowoja = new Guzowoja();
         _loc2_.setSize(_loc1_).setColor(11776947);
         _loc2_.setBold(this.syrapidow);
         return _loc2_;
      }

      public function draw(param1:int) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var text:Guzowoja = null;
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
         text.setVerticalAlign(Guzowoja.BOTTOM);
         text.setStringBuilder(new Vofezuzy(this.numStars_.toString()));
         text.filters=[new DropShadowFilter(0,0,0,1,4,4,2)];
         this.background.addChild(text);
         this.icon=this.syrapidow?Cinihel.hofihufiq(this.numStars_):Cinihel.mugupunuj(this.numStars_);
         this.background.addChild(this.icon);
         text.textChanged.addOnce(onTextChanged);
         addChild(this.background);
         if(this.ciq!=null)
         {
            this.zyk();
         }
         return;
      }

      private function zyk() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.ryfoc.isEmpty())
         {
            this.position();
         }
         else
         {
            this.ryfoc.complete.addOnce(this.position);
         }
         return;
      }

      private function position() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.ciq)
         {
            this.background.x=this.ciq.width;
            this.ciq.y=this.icon.y-3;
         }
         return;
      }
   }

}