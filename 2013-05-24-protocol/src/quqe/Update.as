package quqe
{
   import __AS3__.vec.Vector;
   import cypujavop.Qado;
   import cypujavop.Gosimesi;
   import flash.utils.IDataInput;
   import com.company.assembleegameclient.util.Hidad;


   public class Update extends IncomingOnlyNetworkMessage
   {
      public function Update(param1:uint, param2:Function) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.tiles_=new Vector.<Qado>();
         this.newObjs_=new Vector.<Gosimesi>();
         this.drops_=new Vector.<int>();
         super(param1,param2);
         return;
      }

      public var tiles_:Vector.<Qado>;

      public var newObjs_:Vector.<Gosimesi>;

      public var drops_:Vector.<int>;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:* = 0;
         var _loc3_:int = param1.readShort();
         _loc2_=_loc3_;
         while(_loc2_<this.tiles_.length)
         {
            Hidad.dub(this.tiles_[_loc2_]);
            _loc2_++;
         }
         this.tiles_.length=Math.min(_loc3_,this.tiles_.length);
         while(this.tiles_.length<_loc3_)
         {
            this.tiles_.push(Hidad.mapego(Qado) as Qado);
         }
         _loc2_=0;
         while(_loc2_<_loc3_)
         {
            this.tiles_[_loc2_].parseFromInput(param1);
            _loc2_++;
         }
         this.newObjs_.length=0;
         _loc3_=param1.readShort();
         _loc2_=_loc3_;
         while(_loc2_<this.newObjs_.length)
         {
            Hidad.dub(this.newObjs_[_loc2_]);
            _loc2_++;
         }
         this.newObjs_.length=Math.min(_loc3_,this.newObjs_.length);
         while(this.newObjs_.length<_loc3_)
         {
            this.newObjs_.push(Hidad.mapego(Gosimesi) as Gosimesi);
         }
         _loc2_=0;
         while(_loc2_<_loc3_)
         {
            this.newObjs_[_loc2_].parseFromInput(param1);
            _loc2_++;
         }
         this.drops_.length=0;
         var _loc4_:int = param1.readShort();
         _loc2_=0;
         while(_loc2_<_loc4_)
         {
            this.drops_.push(param1.readInt());
            _loc2_++;
         }
         return;
      }

      override public function toString() : String {
         return formatToString("UPDATE","tiles_","newObjs_","drops_");
      }
   }

}