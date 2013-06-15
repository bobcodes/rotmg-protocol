package com.company.assembleegameclient.tutorial
{
   import com.company.assembleegameclient.objects.ObjectLibrary;


   public class Requirement extends Object
   {
      public function Requirement(param1:XML) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.type_=String(param1);
         var _loc2_:String = String(param1.@objectId);
         if(!(_loc2_==null)&&!(_loc2_==""))
         {
            this.objectType_=ObjectLibrary.nezuwy[_loc2_];
         }
         this.mavaw=String(param1.@objectName).replace("tutorial_script","tutorial");
         if(this.mavaw==null)
         {
            this.mavaw="";
         }
         this.wip=int(param1.@slot);
         this.radius_=Number(param1.@radius);
         return;
      }

      public var type_:String;

      public var wip:int = -1;

      public var objectType_:int = -1;

      public var mavaw:String = "";

      public var radius_:Number = 1;
   }

}