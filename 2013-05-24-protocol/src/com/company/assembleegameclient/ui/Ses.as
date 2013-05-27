package com.company.assembleegameclient.ui
{
   import flash.display.Sprite;
   import flash.display.Bitmap;
   import movimet.Lufub;
   import nec.Feti;
   import com.company.assembleegameclient.objects.GameObject;
   import tulunyno.Hugyqufyq;
   import flash.geom.ColorTransform;
   import com.company.util.MoreColorUtil;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import com.company.assembleegameclient.objects.Player;
   import aaa.rotmg.config.UserConfig;
   import flash.filters.DropShadowFilter;


   public class Ses extends Sprite
   {
      public function Ses(param1:uint, param2:Boolean, param3:GameObject) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super();
         this.tesis=param2;
         this.color=param1;
         this.didekaben=new Bitmap();
         this.didekaben.x=-4;
         this.didekaben.y=-4;
         addChild(this.didekaben);
         this.text=new Lufub().setSize(13).setColor(param1).setHTML(param2);
         if(!param2)
         {
            this.text.setTextWidth(66).setTextHeight(20).setBold(true);
         }
         this.text.x=32;
         this.text.y=6;
         this.text.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.text);
         this.meko=this.text.textChanged;
         this.draw(param3);
         return;
      }

      public var didekaben:Bitmap;

      private var text:Lufub;

      private var nepujyji:Feti;

      private var color:uint;

      public var tesis:Boolean;

      public var go:GameObject;

      public var meko:Hugyqufyq;

      private var hyri:String;

      private var type:int;

      private var level:int;

      public function draw(param1:GameObject, param2:ColorTransform=null) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:* = false;
         _loc3_=this.wopupi();
         this.go=param1;
         visible=!(param1==null);
         if((visible)&&((this.pede())||(_loc3_)))
         {
            this.redraw();
            transform.colorTransform=(param2)||(MoreColorUtil.identity);
         }
         return;
      }

      public function clear() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.go=null;
         visible=false;
         return;
      }

      public function wopupi() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return this.go==null&&visible==false;
      }

      private function pede() : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Boolean = !(this.go.name_==this.hyri)||!(this.go.komolevy==this.level)||!(this.go.objectType_==this.type);
         return _loc1_;
      }

      private function polyram() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.hyri=this.go.name_;
         this.level=this.go.komolevy;
         this.type=this.go.objectType_;
         return;
      }

      private function redraw() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.didekaben.bitmapData=this.go.getPortrait();
         this.text.setStringBuilder(this.vuryhul());
         this.text.setColor(this.gil());
         this.text.update();
         return;
      }

      private function vuryhul() : Feti {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.nepujyji=(this.nepujyji)||(new Feti());
         if(this.tesis)
         {
            this.fukozic();
         }
         else
         {
            if(this.javazorof())
            {
               this.nepujyji.lysano(this.hyri);
            }
            else
            {
               this.nepujyji.lysano(ObjectLibrary.fajocyd[this.type]);
            }
         }
         return this.nepujyji;
      }

      private function fukozic() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:String = null;
         var _loc2_:Object = {};
         if(this.javazorof())
         {
            _loc1_="<b>{name}</b> ({type}{level})";
            if(this.go.name_.length>8)
            {
               _loc2_.name=this.go.name_.slice(0,6)+"...";
            }
            else
            {
               _loc2_.name=this.go.name_;
            }
            _loc2_.type=ObjectLibrary.fajocyd[this.type];
            _loc2_.level=this.level<1?"":" "+this.level;
         }
         else
         {
            _loc1_="<b>{name}</b>";
            _loc2_.name=ObjectLibrary.fajocyd[this.type];
         }
         this.nepujyji.lysano(_loc1_,_loc2_);
         return;
      }

      private function javazorof() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !(this.go.name_==null)&&!(this.go.name_=="");
      }

      private function gil() : int {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Player = this.go as Player;
         if(_loc1_==null)
         {
            return this.color;
         }
         if(_loc1_.lysezyky)
         {
            return UserConfig.sujasezuw;
         }
         if(_loc1_.wiz)
         {
            return UserConfig.vaquzu;
         }
         return this.color;
      }
   }

}