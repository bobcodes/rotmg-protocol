package moryzis
{
   import com.company.assembleegameclient.objects.GameObject;
   import __AS3__.vec.Vector;
   import flash.display.BitmapData;
   import com.company.util.AssetLibrary;
   import com.company.assembleegameclient.util.TextureRedrawer;


   public class Wezy extends Jil
   {
      public function Wezy(param1:Baly, param2:GameObject) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.qucebiza=param2;
         this.luludeme=new Vector.<Liq>();
         this.jybewate=new Vector.<Liq>();
         this.jyrinu=param1;
         if(this.jyrinu.bitmapFile)
         {
            this.bitmapData=AssetLibrary.jeqycu(this.jyrinu.bitmapFile,this.jyrinu.bitmapIndex);
            this.bitmapData=TextureRedrawer.redraw(this.bitmapData,this.jyrinu.size,true,0,0);
         }
         else
         {
            this.bitmapData=TextureRedrawer.redrawSolidSquare(this.jyrinu.color,this.jyrinu.size);
         }
         return;
      }

      public static function hokum(param1:Baly, param2:GameObject) : Wezy {
         return new Wezy(param1,param2);
      }

      private var luludeme:Vector.<Liq>;

      private var jybewate:Vector.<Liq>;

      private var qucebiza:GameObject;

      private var buteben:Number = 0;

      private var jylis:Number = 0;

      private var jyrinu:Baly;

      private var bitmapData:BitmapData;

      private var lydehani:Number;

      override public function update(param1:int, param2:int) : Boolean {
         var _loc11_:* = true;
         var _loc12_:* = false;
         var _loc4_:* = NaN;
         var _loc9_:Liq = null;
         var _loc10_:Liq = null;
         var _loc3_:Number = param1/1000;
         _loc4_=param2/1000;
         if(this.qucebiza.map_==null)
         {
            return false;
         }
         x_=this.qucebiza.x_;
         y_=this.qucebiza.y_;
         z_=this.qucebiza.z_+this.jyrinu.zOffset;
         this.jylis=this.jylis+_loc4_;
         var _loc5_:Number = this.jyrinu.rate*this.jylis;
         var _loc6_:int = _loc5_-this.buteben;
         var _loc7_:* = 0;
         while(_loc7_<_loc6_)
         {
            if(this.luludeme.length)
            {
               _loc9_=this.luludeme.pop();
            }
            else
            {
               _loc9_=new Liq(this.bitmapData);
            }
            _loc9_.initialize(this.jyrinu.life+this.jyrinu.lifeVariance*(2*Math.random()-1),this.jyrinu.speed+this.jyrinu.speedVariance*(2*Math.random()-1),this.jyrinu.speed+this.jyrinu.speedVariance*(2*Math.random()-1),this.jyrinu.rise+this.jyrinu.riseVariance*(2*Math.random()-1),z_);
            map_.addObj(_loc9_,x_+this.jyrinu.rangeX*(2*Math.random()-1),y_+this.jyrinu.rangeY*(2*Math.random()-1));
            this.jybewate.push(_loc9_);
            _loc7_++;
         }
         this.buteben=this.buteben+_loc6_;
         var _loc8_:* = 0;
         while(_loc8_<this.jybewate.length)
         {
            _loc10_=this.jybewate[_loc8_];
            _loc10_.lelosizoq=_loc10_.lelosizoq-_loc4_;
            if(_loc10_.lelosizoq<=0)
            {
               this.jybewate.splice(_loc8_,1);
               map_.removeObj(_loc10_.objectId_);
               _loc8_--;
               this.luludeme.push(_loc10_);
            }
            else
            {
               _loc10_.bojila=_loc10_.bojila+this.jyrinu.riseAcc*_loc4_;
               _loc10_.x_=_loc10_.x_+_loc10_.hesufyjo*_loc4_;
               _loc10_.y_=_loc10_.y_+_loc10_.jukopofuj*_loc4_;
               _loc10_.z_=_loc10_.z_+_loc10_.bojila*_loc4_;
            }
            _loc8_++;
         }
         return true;
      }

      override public function removeFromMap() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Liq = null;
         for each (_loc1_ in this.jybewate)
         {
            map_.removeObj(_loc1_.objectId_);
         }
         this.jybewate=null;
         this.luludeme=null;
         super.removeFromMap();
         return;
      }
   }

}