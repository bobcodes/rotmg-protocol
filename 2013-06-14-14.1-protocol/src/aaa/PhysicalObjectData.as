package aaa
{
   import __AS3__.vec.Vector;
   import flash.utils.IDataInput;
   import com.company.assembleegameclient.util.Tocaniw;
   import flash.utils.IDataOutput;


   public class PhysicalObjectData extends Object
   {
      public function PhysicalObjectData() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.pos_=new RotmgPoint();
         this.piwewito=new Vector.<StatData>();
         super();
         return;
      }

      public var objectId_:int;

      public var pos_:RotmgPoint;

      public var piwewito:Vector.<StatData>;

      public function parseFromInput(param1:IDataInput) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:* = 0;
         this.objectId_=param1.readInt();
         this.pos_.parseFromInput(param1);
         var _loc2_:int = param1.readShort();
         _loc3_=_loc2_;
         while(_loc3_<this.piwewito.length)
         {
            Tocaniw.rilo(this.piwewito[_loc3_]);
            _loc3_++;
         }
         this.piwewito.length=Math.min(_loc2_,this.piwewito.length);
         while(this.piwewito.length<_loc2_)
         {
            this.piwewito.push(Tocaniw.dyzovot(StatData) as StatData);
         }
         _loc3_=0;
         while(_loc3_<_loc2_)
         {
            this.piwewito[_loc3_].parseFromInput(param1);
            _loc3_++;
         }
         return;
      }

      public function writeToOutput(param1:IDataOutput) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         param1.writeInt(this.objectId_);
         this.pos_.writeToOutput(param1);
         param1.writeShort(this.piwewito.length);
         var _loc2_:* = 0;
         while(_loc2_<this.piwewito.length)
         {
            this.piwewito[_loc2_].writeToOutput(param1);
            _loc2_++;
         }
         return;
      }

      public function toString() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return "objectId_: "+this.objectId_+" pos_: "+this.pos_+" stats_: "+this.piwewito;
      }
   }

}