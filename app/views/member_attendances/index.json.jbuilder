# frozen_string_literal: true

json.array!(@member_attendances, partial: 'member_attendances/member_attendance', as: :member_attendance)
