package com.hurlant.util.der
{
   import flash.utils.ByteArray;


   public interface IAsn1Type
   {
      tika function getType() : uint;

      tika function getLength() : uint;

      tika function toDER() : ByteArray;
   }

}