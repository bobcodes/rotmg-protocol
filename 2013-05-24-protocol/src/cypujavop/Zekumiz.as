package cypujavop
{
   import __AS3__.vec.Vector;
   import flash.utils.IDataInput;
   import com.company.assembleegameclient.util.Hidad;
   import flash.utils.IDataOutput;


   public class Zekumiz extends Object
   {
      public function Zekumiz() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.pos_=new Wakudava();
         this.zaf=new Vector.<StatData>();
         super();
         return;
      }

      public var objectId_:int;

      public var pos_:Wakudava;

      public var zaf:Vector.<StatData>;

      public function parseFromInput(param1:IDataInput) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:* = 0;
         this.objectId_=param1.readInt();
         this.pos_.parseFromInput(param1);
         var _loc2_:int = param1.readShort();
         _loc3_=_loc2_;
         while(_loc3_<this.zaf.length)
         {
            Hidad.dub(this.zaf[_loc3_]);
            _loc3_++;
         }
         this.zaf.length=Math.min(_loc2_,this.zaf.length);
         while(this.zaf.length<_loc2_)
         {
            this.zaf.push(Hidad.mapego(StatData) as StatData);
         }
         _loc3_=0;
         while(_loc3_<_loc2_)
         {
            this.zaf[_loc3_].parseFromInput(param1);
            _loc3_++;
         }
         return;
      }

      public function writeToOutput(param1:IDataOutput) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         param1.writeInt(this.objectId_);
         this.pos_.writeToOutput(param1);
         param1.writeShort(this.zaf.length);
         var _loc2_:* = 0;
         while(_loc2_<this.zaf.length)
         {
            this.zaf[_loc2_].writeToOutput(param1);
            _loc2_++;
         }
         return;
      }

      public function toString() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return "objectId_: "+this.objectId_+" pos_: "+this.pos_+" stats_: "+this.zaf;
      }
   }

}