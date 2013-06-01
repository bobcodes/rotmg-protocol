package com.company.assembleegameclient.ui
{
[CLASS1112]   import flash.display.Sprite;
   import flash.display.Bitmap;
   import pudev.Capitu;
   import totuhare.Ziga;
   import com.company.assembleegameclient.objects.GameObject;
   import tinava.Dab;
   import flash.geom.ColorTransform;
   import com.company.util.MoreColorUtil;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import com.company.assembleegameclient.objects.Player;
   import com.company.assembleegameclient.parameters.Parameters;
   import flash.filters.DropShadowFilter;


   public class Semytuqa extends Sprite
   {
      public function Semytuqa(param1:uint, param2:Boolean, param3:GameObject) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super();
         this.dujup=param2;
         this.color=param1;
         this.josiz=new Bitmap();
         this.josiz.x=-4;
         this.josiz.y=-4;
         addChild(this.josiz);
         this.text=new Capitu().setSize(13).setColor(param1).setHTML(param2);
         if(!param2)
         {
            this.text.setTextWidth(66).setTextHeight(20).setBold(true);
         }
         this.text.x=32;
         this.text.y=6;
         this.text.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.text);
         this.femikefu=this.text.textChanged;
         this.draw(param3);
         return;
      }

      public var josiz:Bitmap;

      private var text:Capitu;

      private var busobuj:Ziga;

      private var color:uint;

      public var dujup:Boolean;

      public var go:GameObject;

      public var femikefu:Dab;

      private var pod:String;

      private var type:int;

      private var level:int;

      public function draw(param1:GameObject, param2:ColorTransform=null) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:* = false;
         _loc3_=this.paly();
         this.go=param1;
         visible=!(param1==null);
         if((visible)&&((this.dica())||(_loc3_)))
         {
            this.redraw();
            transform.colorTransform=(param2)||(MoreColorUtil.identity);
         }
         return;
      }

      public function clear() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.go=null;
         visible=false;
         return;
      }

      public function paly() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return this.go==null&&visible==false;
      }

      private function dica() : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Boolean = !(this.go.name_==this.pod)||!(this.go.jepe==this.level)||!(this.go.objectType_==this.type);
         return _loc1_;
      }

      private function wolyf() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.pod=this.go.name_;
         this.level=this.go.jepe;
         this.type=this.go.objectType_;
         return;
      }

      private function redraw() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.josiz.bitmapData=this.go.getPortrait();
         this.text.setStringBuilder(this.lir());
         this.text.setColor(this.pesyme());
         this.text.update();
         return;
      }

      private function lir() : Ziga {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.busobuj=(this.busobuj)||(new Ziga());
         if(this.dujup)
         {
            this.sapuqo();
         }
         else
         {
            if(this.suw())
            {
               this.busobuj.vanajo(this.pod);
            }
            else
            {
               this.busobuj.vanajo(ObjectLibrary.mafiwape[this.type]);
            }
         }
         return this.busobuj;
      }

      private function sapuqo() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:String = null;
         var _loc2_:Object = {};
         if(this.suw())
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
            _loc2_.type=ObjectLibrary.mafiwape[this.type];
            _loc2_.level=this.level<1?"":" "+this.level;
         }
         else
         {
            _loc1_="<b>{name}</b>";
            _loc2_.name=ObjectLibrary.mafiwape[this.type];
         }
         this.busobuj.vanajo(_loc1_,_loc2_);
         return;
      }

      private function suw() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !(this.go.name_==null)&&!(this.go.name_=="");
      }

      private function pesyme() : int {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Player = this.go as Player;
         if(_loc1_==null)
         {
            return this.color;
         }
         if(_loc1_.togyjuwub)
         {
            return Parameters.nagy;
         }
         if(_loc1_.zykijaq)
         {
            return Parameters.rozodov;
         }
         return this.color;
      }
   }
[/CLASS]
}