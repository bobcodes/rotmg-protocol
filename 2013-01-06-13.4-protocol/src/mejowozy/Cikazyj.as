package mejowozy
{
[CLASS1694]   import com.company.assembleegameclient.objects.GameObject;
   import __AS3__.vec.Vector;
   import flash.display.BitmapData;
   import com.company.util.AssetLibrary;
   import com.company.assembleegameclient.util.TextureRedrawer;


   public class Cikazyj extends Ryf
   {
      public function Cikazyj(param1:Roneg, param2:GameObject) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.cytaviqor=param2;
         this.nobojiwu=new Vector.<Nukohoge>();
         this.cetyfub=new Vector.<Nukohoge>();
         this.rekecijus=param1;
         if(this.rekecijus.bitmapFile)
         {
            this.bitmapData=AssetLibrary.zovy(this.rekecijus.bitmapFile,this.rekecijus.bitmapIndex);
            this.bitmapData=TextureRedrawer.redraw(this.bitmapData,this.rekecijus.size,true,0,0);
         }
         else
         {
            this.bitmapData=TextureRedrawer.redrawSolidSquare(this.rekecijus.color,this.rekecijus.size);
         }
         return;
      }

      public static function gabamogy(param1:Roneg, param2:GameObject) : Cikazyj {
         return new Cikazyj(param1,param2);
      }

      private var nobojiwu:Vector.<Nukohoge>;

      private var cetyfub:Vector.<Nukohoge>;

      private var cytaviqor:GameObject;

      private var kicohobuk:Number = 0;

      private var temogefed:Number = 0;

      private var rekecijus:Roneg;

      private var bitmapData:BitmapData;

      private var gyw:Number;

      override public function update(param1:int, param2:int) : Boolean {
         var _loc11_:* = false;
         var _loc12_:* = true;
         var _loc4_:* = NaN;
         var _loc9_:Nukohoge = null;
         var _loc10_:Nukohoge = null;
         var _loc3_:Number = param1/1000;
         _loc4_=param2/1000;
         if(this.cytaviqor.map_==null)
         {
            return false;
         }
         x_=this.cytaviqor.x_;
         y_=this.cytaviqor.y_;
         z_=this.cytaviqor.z_+this.rekecijus.zOffset;
         this.temogefed=this.temogefed+_loc4_;
         var _loc5_:Number = this.rekecijus.rate*this.temogefed;
         var _loc6_:int = _loc5_-this.kicohobuk;
         var _loc7_:* = 0;
         while(_loc7_<_loc6_)
         {
            if(this.nobojiwu.length)
            {
               _loc9_=this.nobojiwu.pop();
            }
            else
            {
               _loc9_=new Nukohoge(this.bitmapData);
            }
            _loc9_.initialize(this.rekecijus.life+this.rekecijus.lifeVariance*(2*Math.random()-1),this.rekecijus.speed+this.rekecijus.speedVariance*(2*Math.random()-1),this.rekecijus.speed+this.rekecijus.speedVariance*(2*Math.random()-1),this.rekecijus.rise+this.rekecijus.riseVariance*(2*Math.random()-1),z_);
            map_.addObj(_loc9_,x_+this.rekecijus.rangeX*(2*Math.random()-1),y_+this.rekecijus.rangeY*(2*Math.random()-1));
            this.cetyfub.push(_loc9_);
            _loc7_++;
         }
         this.kicohobuk=this.kicohobuk+_loc6_;
         var _loc8_:* = 0;
         while(_loc8_<this.cetyfub.length)
         {
            _loc10_=this.cetyfub[_loc8_];
            _loc10_.mebakogef=_loc10_.mebakogef-_loc4_;
            if(_loc10_.mebakogef<=0)
            {
               this.cetyfub.splice(_loc8_,1);
               map_.removeObj(_loc10_.objectId_);
               _loc8_--;
               this.nobojiwu.push(_loc10_);
            }
            else
            {
               _loc10_.fehamew=_loc10_.fehamew+this.rekecijus.riseAcc*_loc4_;
               _loc10_.x_=_loc10_.x_+_loc10_.pyloz*_loc4_;
               _loc10_.y_=_loc10_.y_+_loc10_.jozutulu*_loc4_;
               _loc10_.z_=_loc10_.z_+_loc10_.fehamew*_loc4_;
            }
            _loc8_++;
         }
         return true;
      }

      override public function removeFromMap() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Nukohoge = null;
         for each (_loc1_ in this.cetyfub)
         {
            map_.removeObj(_loc1_.objectId_);
         }
         this.cetyfub=null;
         this.nobojiwu=null;
         super.removeFromMap();
         return;
      }
   }
[/CLASS]
}