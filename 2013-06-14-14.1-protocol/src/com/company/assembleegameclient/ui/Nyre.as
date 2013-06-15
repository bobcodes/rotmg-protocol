package com.company.assembleegameclient.ui
{
   import flash.display.Sprite;
   import flash.display.Bitmap;
   import hivysif.Guzowoja;
   import jediwip.Qoreno;
   import com.company.assembleegameclient.objects.GameObject;
   import mukyrosu.Qanyduk;
   import flash.geom.ColorTransform;
   import com.company.util.MoreColorUtil;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import com.company.assembleegameclient.objects.Player;
   import com.company.assembleegameclient.parameters.Parameters;
   import flash.filters.DropShadowFilter;


   public class Nyre extends Sprite
   {
      public function Nyre(param1:uint, param2:Boolean, param3:GameObject) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super();
         this.wogi=param2;
         this.color=param1;
         this.wikobapo=new Bitmap();
         this.wikobapo.x=-4;
         this.wikobapo.y=-4;
         addChild(this.wikobapo);
         this.text=new Guzowoja().setSize(13).setColor(param1).setHTML(param2);
         if(!param2)
         {
            this.text.setTextWidth(66).setTextHeight(20).setBold(true);
         }
         this.text.x=32;
         this.text.y=6;
         this.text.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.text);
         this.gujy=this.text.textChanged;
         this.draw(param3);
         return;
      }

      public var wikobapo:Bitmap;

      private var text:Guzowoja;

      private var barypogus:Qoreno;

      private var color:uint;

      public var wogi:Boolean;

      public var go:GameObject;

      public var gujy:Qanyduk;

      private var zyj:String;

      private var type:int;

      private var level:int;

      public function draw(param1:GameObject, param2:ColorTransform=null) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Boolean = this.pame();
         this.go=param1;
         visible=!(param1==null);
         if((visible)&&((this.syvah())||(_loc3_)))
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

      public function pame() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return this.go==null&&visible==false;
      }

      private function syvah() : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Boolean = !(this.go.name_==this.zyj)||!(this.go.kanifivi==this.level)||!(this.go.objectType_==this.type);
         return _loc1_;
      }

      private function cin() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zyj=this.go.name_;
         this.level=this.go.kanifivi;
         this.type=this.go.objectType_;
         return;
      }

      private function redraw() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.wikobapo.bitmapData=this.go.getPortrait();
         this.text.setStringBuilder(this.qiqirete());
         this.text.setColor(this.curequlit());
         this.text.update();
         return;
      }

      private function qiqirete() : Qoreno {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.barypogus=(this.barypogus)||(new Qoreno());
         if(this.wogi)
         {
            this.nijinili();
         }
         else
         {
            if(this.lyny())
            {
               this.barypogus.cewyv(this.zyj);
            }
            else
            {
               this.barypogus.cewyv(ObjectLibrary.kipanudad[this.type]);
            }
         }
         return this.barypogus;
      }

      private function nijinili() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:String = null;
         var _loc2_:Object = {};
         if(this.lyny())
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
            _loc2_.type=ObjectLibrary.kipanudad[this.type];
            _loc2_.level=this.level<1?"":" "+this.level;
         }
         else
         {
            _loc1_="<b>{name}</b>";
            _loc2_.name=ObjectLibrary.kipanudad[this.type];
         }
         this.barypogus.cewyv(_loc1_,_loc2_);
         return;
      }

      private function lyny() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !(this.go.name_==null)&&!(this.go.name_=="");
      }

      private function curequlit() : int {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Player = this.go as Player;
         if(_loc1_==null)
         {
            return this.color;
         }
         if(_loc1_.betyzyq)
         {
            return Parameters.dumejik;
         }
         if(_loc1_.dihap)
         {
            return Parameters.vimytehy;
         }
         return this.color;
      }
   }

}