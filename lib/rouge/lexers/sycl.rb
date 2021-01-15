# -*- coding: utf-8 -*- #
# frozen_string_literal: true

module Rouge
  module Lexers
    load_lexer 'cpp.rb'

    class Sycl < Cpp
      title "SYCL"
      desc "The standard SYCL C++ for heterogeneous computing from Khronos Group"

      tag 'sycl'

      @sycl_data_types = Set.new(%w(
          char2 char3 char4 char8 char16
          double2 double3 double4 double8 double16
          float2 float3 float4 float8 float16
          half half2 half3 half4 half8 half16
          int2 int3 int4 int8 int16
          long2 long3 long4 long8 long16
          longlong2 longlong3 longlong4 longlong8 longlong16
          schar2 schar3 schar4 schar8 schar16
          short2 short3 short4 short8 short16
          uchar2 uchar3 uchar4 uchar8 uchar16
          uint2 uint3 uint4 uint8 uint16
          ulong2 ulong3 ulong4 ulong8 ulong16
          ulonglong2 ulonglong3 ulonglong4 ulonglong8 ulonglong16
          ushort2 ushort3 ushort4 ushort8 ushort16
        ))

      @sycl_functions = Set.new(%w(
          aligned_alloc
          aligned_alloc_device
          aligned_alloc_host
          aligned_alloc_shared
          all_of
          any_of
          backend_traits
          barrier
          depends_on
          exclusive_scan
          fill
          free
          get
          get_access
          get_host_access
          get_native
          get_native_context
          get_native_device
          get_native_mem
          get_native_queue
          get_pointer_device
          get_pointer_type
          group_all_of
          group_any_of
          group_barrier
          group_broadcast
          group_exclusive_scan
          group_inclusive_scan
          group_none_of
          group_reduce
          host_task
          inclusive_scan
          make_buffer
          make_context
          make_device
          make_event
          make_image_sampler
          make_kernel
          make_module
          make_platform
          make_queue
          make_sampled_image
          make_sampler
          make_stream
          make_unsampled_image
          malloc
          malloc_device
          malloc_host
          malloc_shared
          mem_advise
          memcpy
          memset
          none_of
          parallel_for
          parallel_for_work_group
          parallel_for_work_item
          param_traits
          prefetch
          reduce
          single_task
          submit
        ))

      # Generic types used in SYCL pseudo code descriptions like Gen,
      # SGen, GenVec...
      @sycl_generic_types = Set.new(%w(
          charn
          doublen
          floatn
          genchar
          genfloat
          genfloatd
          genfloatf
          genfloath
          genfloatptr
          gengeodouble
          gengeofloat
          genhalf
          genint
          geninteger
          geninteger16bit
          geninteger32bit
          geninteger64bit
          geninteger8bit
          genintegerNbit
          genintptr
          genlong
          genlonglong
          genshort
          gentype
          genvector
          halfn
          igenchar
          igeninteger
          igeninteger16bit
          igeninteger32bit
          igeninteger64bit
          igeninteger8bit
          igenintegerNbit
          igenlonginteger
          intn
          longlongn
          longn
          scharn
          sgenfloat
          sgeninteger
          shortn
          ucharn
          ugenchar
          ugenint
          ugeninteger
          ugeninteger16bit
          ugeninteger32bit
          ugeninteger64bit
          ugeninteger8bit
          ugenintegerNbit
          ugenlong
          ugenlonginteger
          ugenlonglong
          ugenshort
          uintn
          ulonglongn
          ulongn
          ushortn
        ))

      @sycl_macros = Set.new(%w(
          SYCL_EXTERNAL
        ))

      @sycl_namespaces = Set.new(%w(
          sycl
        ))

      # Types, namespace and attributes used by the SYCL OpenCL backend
      @sycl_opencl_keywords = Set.new(%w(
          __kernel
          __read_only
          __read_write
          __write_only
          cl
          cl_bool
          cl_char
          cl_char16
          cl_char2
          cl_char3
          cl_char4
          cl_char8
          cl_command_queue
          cl_context
          cl_device_id
          cl_double
          cl_double16
          cl_double2
          cl_double3
          cl_double4
          cl_double8
          cl_event
          cl_exception
          cl_float
          cl_float16
          cl_float2
          cl_float3
          cl_float4
          cl_float8
          cl_half
          cl_half16
          cl_half2
          cl_half3
          cl_half4
          cl_half8
          cl_int
          cl_int16
          cl_int2
          cl_int3
          cl_int4
          cl_int8
          cl_kernel
          cl_long
          cl_long16
          cl_long2
          cl_long3
          cl_long4
          cl_long8
          cl_mem
          cl_pipe
          cl_platform_id
          cl_program
          cl_sampler
          cl_short
          cl_short16
          cl_short2
          cl_short3
          cl_short4
          cl_short8
          cl_uchar
          cl_uchar16
          cl_uchar2
          cl_uchar3
          cl_uchar4
          cl_uchar8
          cl_uint
          cl_uint16
          cl_uint2
          cl_uint3
          cl_uint4
          cl_uint8
          cl_ulong
          cl_ulong16
          cl_ulong2
          cl_ulong4
          cl_ulong8
          cl_ushort
          cl_ushort16
          cl_ushort2
          cl_ushort3
          cl_ushort4
          cl_ushort8
          event_t
        ))

      @sycl_types = Set.new(%w(
          accelerator_selector
          access
          access_mode
          accessor
          async_exception
          atomic_ref
          bit_and
          bit_or
          bit_xor
          buffer
          buffer_allocator
          constant_ptr
          context
          cpu_selector
          decorated_constant_ptr
          decorated_global_ptr
          decorated_local_ptr
          decorated_private_ptr
          default_selector
          device
          device_event
          event
          exception
          exception_list
          executable
          generic_ptr
          global_ptr
          gpu_selector
          group
          h_item
          handler
          host_accessor
          host_selector
          id
          image_allocator
          image_sampler
          input
          interop_handle
          item
          kernel
          local_ptr
          logical_and
          logical_or
          marray
          maximum
          minimum
          mode
          module
          module_state
          multi_ptr
          multiplies
          nd_item
          nd_range
          object
          platform
          plus
          private_memory
          private_ptr
          property
          property_list
          queue
          range
          raw_constant_ptr
          raw_generic_ptr
          raw_global_ptr
          raw_local_ptr
          raw_private_ptr
          reducer
          reduction
          sampled_image
          specialization_id
          stream
          sub_group
          target
          this_module
          unsampled_image
          usm_allocator
          vec
        ))

      @sycl_variables = Set.new(%w(
          accelerator_selector_v
          cpu_selector_v
          default_selector_v
          gpu_selector_v
          host_selector_v
        ))

      # For now just recycle some token classes from the C++ highlighter and
      # reinject the SYCL symbols in these classes

      def self.builtins
        # @builtins is an array from the C lexer
        @builtins ||= super.append(@sycl_variables)
      end

      def self.keywords
        @keywords ||= super + @sycl_types
      end

      def self.keywords_type
        @keywords_type ||= super + @sycl_data_types + @sycl_generic_types \
                           + @sycl_opencl_keywords
      end

      def self.reserved
        @reserved ||= super + @sycl_functions + @sycl_namespaces
      end
    end
  end
end
