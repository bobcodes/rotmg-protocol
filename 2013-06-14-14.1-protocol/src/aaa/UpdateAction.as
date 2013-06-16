package aaa
{
   import __AS3__.vec.Vector;
   import aaa.Tile;
   import aaa.PhysicalObject;
   import flash.utils.IDataInput;
   import com.company.assembleegameclient.util.Tocaniw;


   public class UpdateAction extends Tezypama
   {
      public function UpdateAction(param1:uint, param2:Function) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.tiles_=new Vector.<Tile>();
         this.newObjs_=new Vector.<PhysicalObject>();
         this.drops_=new Vector.<int>();
         super(param1,param2);
         return;
      }

      public var tiles_:Vector.<Tile>;

      public var newObjs_:Vector.<PhysicalObject>;

      public var drops_:Vector.<int>;

      override public function parseFromInput(param1:IDataInput) : void {
         var _loc2_:* = 0;
         var _loc3_:int = param1.readShort();
         _loc2_=_loc3_;
         while(_loc2_<this.tiles_.length)
         {
            Tocaniw.rilo(this.tiles_[_loc2_]);
            _loc2_++;
         }
         this.tiles_.length=Math.min(_loc3_,this.tiles_.length);
         while(this.tiles_.length<_loc3_)
         {
            this.tiles_.push(Tocaniw.dyzovot(Tile) as Tile);
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
            Tocaniw.rilo(this.newObjs_[_loc2_]);
            _loc2_++;
         }
         this.newObjs_.length=Math.min(_loc3_,this.newObjs_.length);
         while(this.newObjs_.length<_loc3_)
         {
            this.newObjs_.push(Tocaniw.dyzovot(PhysicalObject) as PhysicalObject);
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