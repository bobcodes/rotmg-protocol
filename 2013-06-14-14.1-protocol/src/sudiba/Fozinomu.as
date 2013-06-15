package sudiba
{
   import flash.display.Sprite;
   import com.company.assembleegameclient.objects.GameObject;
   import flash.geom.Point;
   import hivysif.Guzowoja;
   import com.company.assembleegameclient.map.Qawosiwi;
   import jediwip.Tunyhazo;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.filters.GlowFilter;


   public class Fozinomu extends Sprite implements Pidub
   {
      public function Fozinomu(param1:GameObject, param2:uint, param3:int, param4:int=0) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         super();
         this.go_=param1;
         this.jidade=new Point(0,-param1.texture_.height*param1.size_/100*5-20);
         this.color_=param2;
         this.lifetime_=param3;
         this.poj=param4;
         this.zab=new Guzowoja().setSize(24).setColor(param2).setBold(true);
         this.zab.filters=[new GlowFilter(0,1,4,4,2,1)];
         addChild(this.zab);
         visible=false;
         return;
      }

      public const bymawucaz:int = 40;

      public var go_:GameObject;

      public var jidade:Point;

      public var color_:uint;

      public var lifetime_:int;

      public var poj:int;

      private var startTime_:int = 0;

      private var zab:Guzowoja;

      public function draw(param1:Qawosiwi, param2:int) : Boolean {
         var _loc5_:* = true;
         var _loc6_:* = false;
         if(this.startTime_==0)
         {
            this.startTime_=param2+this.poj;
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
         if(this.go_==null||!this.go_.vuci)
         {
            visible=false;
            return true;
         }
         visible=true;
         x=(this.go_!=null?this.go_.witog[0]:0)+(this.jidade!=null?this.jidade.x:0);
         var _loc4_:Number = _loc3_/this.lifetime_*this.bymawucaz;
         y=(this.go_!=null?this.go_.witog[1]:0)+(this.jidade!=null?this.jidade.y:0)-_loc4_;
         return true;
      }

      public function tomu() : GameObject {
         return this.go_;
      }

      public function dispose() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         parent.removeChild(this);
         return;
      }

      public function setStringBuilder(param1:Tunyhazo) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.zab.textChanged.add(this.onTextChanged);
         this.zab.setStringBuilder(param1);
         return;
      }

      private function onTextChanged() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Bitmap = null;
         var _loc1_:BitmapData = new BitmapData(this.zab.width,this.zab.height,true,0);
         _loc2_=new Bitmap(_loc1_);
         _loc1_.draw(this.zab,new Matrix());
         _loc2_.x=_loc2_.x-_loc2_.width*0.5;
         _loc2_.y=_loc2_.y-_loc2_.height*0.5;
         addChild(_loc2_);
         removeChild(this.zab);
         this.zab=null;
         return;
      }
   }

}