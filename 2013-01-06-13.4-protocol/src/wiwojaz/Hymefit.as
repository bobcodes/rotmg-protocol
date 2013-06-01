package wiwojaz
{
[CLASS1114]   import flash.display.Sprite;
   import com.company.assembleegameclient.objects.GameObject;
   import flash.geom.Point;
   import pudev.Capitu;
   import com.company.assembleegameclient.map.Fot;
   import totuhare.Qebar;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.filters.GlowFilter;


   public class Hymefit extends Sprite implements Husuwuj
   {
      public function Hymefit(param1:GameObject, param2:uint, param3:int, param4:int=0) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         super();
         this.go_=param1;
         this.bot=new Point(0,-param1.texture_.height*param1.size_/100*5-20);
         this.color_=param2;
         this.lifetime_=param3;
         this.cewo=param4;
         this.fiv=new Capitu().setSize(24).setColor(param2).setBold(true);
         this.fiv.filters=[new GlowFilter(0,1,4,4,2,1)];
         addChild(this.fiv);
         visible=false;
         return;
      }

      public const metolulo:int = 40;

      public var go_:GameObject;

      public var bot:Point;

      public var color_:uint;

      public var lifetime_:int;

      public var cewo:int;

      private var startTime_:int = 0;

      private var fiv:Capitu;

      public function draw(param1:Fot, param2:int) : Boolean {
         var _loc5_:* = true;
         var _loc6_:* = false;
         if(this.startTime_==0)
         {
            this.startTime_=param2+this.cewo;
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
         if(this.go_==null||!this.go_.nyz)
         {
            visible=false;
            return true;
         }
         visible=true;
         x=(this.go_!=null?this.go_.meluhykag[0]:0)+(this.bot!=null?this.bot.x:0);
         var _loc4_:Number = _loc3_/this.lifetime_*this.metolulo;
         y=(this.go_!=null?this.go_.meluhykag[1]:0)+(this.bot!=null?this.bot.y:0)-_loc4_;
         return true;
      }

      public function fujofegyl() : GameObject {
         return this.go_;
      }

      public function dispose() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         parent.removeChild(this);
         return;
      }

      public function setStringBuilder(param1:Qebar) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.fiv.textChanged.add(this.onTextChanged);
         this.fiv.setStringBuilder(param1);
         return;
      }

      private function onTextChanged() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Bitmap = null;
         var _loc1_:BitmapData = new BitmapData(this.fiv.width,this.fiv.height,true,0);
         _loc2_=new Bitmap(_loc1_);
         _loc1_.draw(this.fiv,new Matrix());
         _loc2_.x=_loc2_.x-_loc2_.width*0.5;
         _loc2_.y=_loc2_.y-_loc2_.height*0.5;
         addChild(_loc2_);
         removeChild(this.fiv);
         this.fiv=null;
         return;
      }
   }
[/CLASS]
}