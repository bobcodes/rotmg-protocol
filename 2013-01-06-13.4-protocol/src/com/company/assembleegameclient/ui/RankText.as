package com.company.assembleegameclient.ui
{
[CLASS883]   import flash.display.Sprite;
   import pudev.Capitu;
   import tidi.Dak;
   import totuhare.Javo;
   import flash.filters.DropShadowFilter;
   import com.company.assembleegameclient.util.Gugi;
   import totuhare.Zufi;
   import haqakel.Kefyfa;


   public class RankText extends Sprite
   {
      public function RankText(param1:int, param2:Boolean, param3:Boolean) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.juwocez=new Dak();
         super();
         this.kypy=param2;
         if(param3)
         {
            this.wajoroje=this.makeText();
            this.wajoroje.setStringBuilder(new Zufi().setParams(Kefyfa.tuzec));
            this.wajoroje.filters=[new DropShadowFilter(0,0,0)];
            this.wajoroje.textChanged.addOnce(this.position);
            addChild(this.wajoroje);
         }
         mouseEnabled=false;
         mouseChildren=false;
         this.draw(param1);
         return;
      }

      public var background:Sprite = null;

      public var kypy:Boolean;

      private var numStars_:int = -1;

      private var wajoroje:Capitu = null;

      private var juwocez:Dak;

      private var icon:Sprite;

      public function makeText() : Capitu {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:int = this.kypy?18:16;
         var _loc2_:Capitu = new Capitu();
         _loc2_.setSize(_loc1_).setColor(11776947);
         _loc2_.setBold(this.kypy);
         return _loc2_;
      }

      public function draw(param1:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var text:Capitu = null;
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
         text.setVerticalAlign(Capitu.BOTTOM);
         text.setStringBuilder(new Javo(this.numStars_.toString()));
         text.filters=[new DropShadowFilter(0,0,0,1,4,4,2)];
         this.background.addChild(text);
         this.icon=this.kypy?Gugi.silyfiga(this.numStars_):Gugi.byjyhec(this.numStars_);
         this.background.addChild(this.icon);
         text.textChanged.addOnce(onTextChanged);
         addChild(this.background);
         if(this.wajoroje!=null)
         {
            this.teruma();
         }
         return;
      }

      private function teruma() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.juwocez.isEmpty())
         {
            this.position();
         }
         else
         {
            this.juwocez.complete.addOnce(this.position);
         }
         return;
      }

      private function position() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.wajoroje)
         {
            this.background.x=this.wajoroje.width;
            this.wajoroje.y=this.icon.y-3;
         }
         return;
      }
   }
[/CLASS]
}