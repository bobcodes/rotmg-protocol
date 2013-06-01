package wyrovu
{
   import flash.display.Sprite;
   import com.company.assembleegameclient.objects.GameObject;
   import flash.geom.Point;
   import movimet.Lufub;
   import com.company.assembleegameclient.map.Wypyj;
   import nec.Zirewe;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.filters.GlowFilter;


   public class Cici extends Sprite implements Pomuk
   {
      public function Cici(param1:GameObject, param2:uint, param3:int, param4:int=0) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         super();
         this.go_=param1;
         this.roqopolij=new Point(0,-param1.texture_.height*param1.size_/100*5-20);
         this.color_=param2;
         this.lifetime_=param3;
         this.myzycizyb=param4;
         this.lud=new Lufub().setSize(24).setColor(param2).setBold(true);
         this.lud.filters=[new GlowFilter(0,1,4,4,2,1)];
         addChild(this.lud);
         visible=false;
         return;
      }

      public const fylum:int = 40;

      public var go_:GameObject;

      public var roqopolij:Point;

      public var color_:uint;

      public var lifetime_:int;

      public var myzycizyb:int;

      private var startTime_:int = 0;

      private var lud:Lufub;

      public function draw(param1:Wypyj, param2:int) : Boolean {
         var _loc5_:* = false;
         var _loc6_:* = true;
         if(this.startTime_==0)
         {
            this.startTime_=param2+this.myzycizyb;
         }
         if(param2<this.startTime_)
         {
            visible=false;
            return true;
         }
         var _loc3_:int = param2-this.startTime_;
         if(_loc3_>this.lifetime_||!(this.go_==null)&&this.go_.map_==null)
         {
            return false;
         }
         if(this.go_==null||!this.go_.qofeleqir)
         {
            visible=false;
            return true;
         }
         visible=true;
         x=(this.go_!=null?this.go_.kiwujacam[0]:0)+(this.roqopolij!=null?this.roqopolij.x:0);
         var _loc4_:Number = _loc3_/this.lifetime_*this.fylum;
         y=(this.go_!=null?this.go_.kiwujacam[1]:0)+(this.roqopolij!=null?this.roqopolij.y:0)-_loc4_;
         return true;
      }

      public function fag() : GameObject {
         return this.go_;
      }

      public function dispose() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         parent.removeChild(this);
         return;
      }

      public function setStringBuilder(param1:Zirewe) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.lud.textChanged.add(this.onTextChanged);
         this.lud.setStringBuilder(param1);
         return;
      }

      private function onTextChanged() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Bitmap = null;
         var _loc1_:BitmapData = new BitmapData(this.lud.width,this.lud.height,true,0);
         _loc2_=new Bitmap(_loc1_);
         _loc1_.draw(this.lud,new Matrix());
         _loc2_.x=_loc2_.x-_loc2_.width*0.5;
         _loc2_.y=_loc2_.y-_loc2_.height*0.5;
         addChild(_loc2_);
         removeChild(this.lud);
         this.lud=null;
         return;
      }
   }

}